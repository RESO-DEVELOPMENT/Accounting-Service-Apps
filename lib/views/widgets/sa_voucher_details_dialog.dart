import 'package:accounting_service/apis/account_api.dart';
import 'package:accounting_service/enums/account_enums.dart';
import 'package:accounting_service/models/account.dart';
import 'package:accounting_service/models/request/proof_of_sale_create_request.dart';
import 'package:accounting_service/models/response/savoucher_details_response.dart';
import 'package:accounting_service/utils/share_pref.dart';
import 'package:accounting_service/view_models/proof_of_sale_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../enums/proof_of_sale_status_enums.dart';
import '../../utils/format.dart';

Future<void> saVoucherDetailsDialog(String id) async {
  AccountModel? account = await getUserInfo();
  SAVoucherDetailsResponse details =
      await Get.find<ProofOfSaleViewModel>().getSaVoucherDetails(id);
  TextEditingController noteController =
      TextEditingController(text: details.notes);
  await Get.dialog(Dialog.fullscreen(
    child: Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  child: Center(
                    child: Text("Chứng từ bán hàng",
                        style: Get.textTheme.titleLarge),
                  ),
                ),
              ),
              IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(
                  Icons.close,
                  size: 32,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text("Mã chứng từ: ${details.voucherCode}",
                    style: Get.textTheme.titleMedium),
              ),
              Expanded(
                child: Text(
                    "Ngày chứng từ: ${formatTime(details.voucherDate ?? DateTime.now().toString())}",
                    style: Get.textTheme.titleMedium),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text("Người lập: ${details.createdBy}",
                    style: Get.textTheme.titleMedium),
              ),
              Expanded(
                child: Text(
                    "Ngày lập: ${formatTime(details.createdAt ?? DateTime.now().toString())}",
                    style: Get.textTheme.titleMedium),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text("Sửa đổi gần nhất bởi: ${details.lastUpdateBy}",
                    style: Get.textTheme.titleMedium),
              ),
              Expanded(
                child: Text(
                    "Ngày sửa đổi: ${formatTime(details.lastUpdatedAt ?? "")}",
                    style: Get.textTheme.titleMedium),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text("Cửa hàng: ${details.storeName}",
                    style: Get.textTheme.titleMedium),
              ),
              Expanded(
                child: Text(
                    "Trạng thái: ${showProofOfSaleStatus(details.status ?? "")}",
                    style: Get.textTheme.titleMedium),
              )
            ],
          ),
          Divider(),
          Expanded(
            child: SingleChildScrollView(
              child: SizedBox(
                width: Get.width,
                child: DataTable(
                    columns: const [
                      DataColumn(label: Text('Tên sản phẩm')),
                      DataColumn(label: Text('Số lượng')),
                      DataColumn(label: Text('Đơn vị tính')),
                      DataColumn(label: Text('Đơn giá')),
                      DataColumn(label: Text('Thành tiền')),
                      DataColumn(label: Text('Thuế')),
                      DataColumn(label: Text('Tổng cộng')),
                    ],
                    rows: details.items!
                        .map((item) => DataRow(cells: [
                              DataCell(Text(item.name ?? '')),
                              DataCell(Text(item.quantity.toString())),
                              DataCell(Text(item.unit ?? '')),
                              DataCell(Text(formatPrice(item.unitPrice ?? 0))),
                              DataCell(
                                  Text(formatPrice(item.totalAmount ?? 0))),
                              DataCell(Text(formatPrice(item.vatAmount ?? 0))),
                              DataCell(
                                  Text(formatPrice(item.finalAmount ?? 0))),
                            ]))
                        .toList()),
              ),
            ),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                    "Trước thuế: ${formatPrice(details.totalAmount ?? 0)}",
                    style: Get.textTheme.titleMedium),
              ),
              Expanded(
                child: Text("Thuế: ${formatPrice(details.vatAmount ?? 0)}",
                    style: Get.textTheme.titleMedium),
              ),
              Expanded(
                child: Text(
                    "Tổng cộng: ${formatPrice(details.finalAmount ?? 0)}",
                    style: Get.textTheme.titleMedium),
              )
            ],
          ),
          const Divider(),
          account!.role == RoleEnums.StoreManager.name
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextField(
                        controller: noteController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Ghi chú',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FilledButton.icon(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Get.theme.colorScheme.error)),
                        onPressed: () {
                          Get.find<ProofOfSaleViewModel>().updateSAVoucher(
                              id,
                              noteController.text,
                              ProofOfSaleStatusEnums.Canceled.name);
                        },
                        icon: const Icon(
                          Icons.close,
                        ),
                        label: const Padding(
                          padding: EdgeInsets.all(16),
                          child: Text(
                            'Huỷ',
                          ),
                        ),
                      ),
                    )
                  ],
                )
              : details.status == ProofOfSaleStatusEnums.AccountingChecked.name
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: TextField(
                            readOnly: true,
                            controller: noteController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Ghi chú',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: FilledButton.icon(
                            onPressed: () {
                              Get.find<ProofOfSaleViewModel>()
                                  .syncSAVoucherToMisa(id);
                            },
                            icon: Icon(
                              Icons.upload_file,
                            ),
                            label: const Padding(
                              padding: EdgeInsets.all(16),
                              child: Text(
                                'Đồng bộ với Misa',
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : details.status == ProofOfSaleStatusEnums.SyncedMisa.name
                      ? const SizedBox()
                      : details.status ==
                              ProofOfSaleStatusEnums.AccountingDenied.name
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: TextField(
                                    controller: noteController,
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Ghi chú',
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: FilledButton.icon(
                                    onPressed: () {
                                      Get.find<ProofOfSaleViewModel>()
                                          .updateSAVoucher(
                                              id,
                                              noteController.text,
                                              ProofOfSaleStatusEnums
                                                  .AccountingChecked.name);
                                    },
                                    icon: Icon(
                                      Icons.check,
                                    ),
                                    label: const Padding(
                                      padding: EdgeInsets.all(16),
                                      child: Text(
                                        'Duyệt lại',
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: TextField(
                                    controller: noteController,
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Ghi chú',
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: FilledButton.icon(
                                    onPressed: () {
                                      Get.find<ProofOfSaleViewModel>()
                                          .updateSAVoucher(
                                              id,
                                              noteController.text,
                                              ProofOfSaleStatusEnums
                                                  .AccountingChecked.name);
                                    },
                                    icon: Icon(
                                      Icons.check,
                                    ),
                                    label: const Padding(
                                      padding: EdgeInsets.all(16),
                                      child: Text(
                                        'Duyệt',
                                      ),
                                    ),
                                  ),
                                ),
                                FilledButton.icon(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Get.theme.colorScheme.error)),
                                  onPressed: () {
                                    Get.find<ProofOfSaleViewModel>()
                                        .updateSAVoucher(
                                            id,
                                            noteController.text,
                                            ProofOfSaleStatusEnums
                                                .AccountingDenied.name);
                                  },
                                  icon: const Icon(
                                    Icons.close,
                                  ),
                                  label: const Padding(
                                    padding: EdgeInsets.all(16),
                                    child: Text(
                                      'Từ chối',
                                    ),
                                  ),
                                ),
                              ],
                            ),
        ],
      ),
    ),
  ));
}

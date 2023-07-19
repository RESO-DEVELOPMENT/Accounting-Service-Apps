import 'package:accounting_service/view_models/proof_of_sale_view_model.dart';
import 'package:accounting_service/enums/payment_enums.dart';
import 'package:accounting_service/utils/format.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:scoped_model/scoped_model.dart';

import '../../../../helper/responsive_helper.dart';
import '../../../../models/request/proof_of_sale_create_request.dart';

class CreateProofOfSaleScreen extends StatefulWidget {
  const CreateProofOfSaleScreen({super.key});

  @override
  State<CreateProofOfSaleScreen> createState() =>
      _CreateProofOfSaleScreenState();
}

class _CreateProofOfSaleScreenState extends State<CreateProofOfSaleScreen> {
  Items proofOfSaleItems = Items();
  ProofOfSaleModel proofOfSaleModelCreate = ProofOfSaleModel();
  bool open = false;
  final TextEditingController filterController = TextEditingController();
  @override
  void initState() {
    super.initState();
    proofOfSaleModelCreate = ProofOfSaleModel(
        code: '', totalAmount: 0, vatAmount: 0, finalAmount: 0, items: []);
    // Get.find<ProofOfSaleViewModel>().initialCreateProofOfSale();
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModel<ProofOfSaleViewModel>(
        model: Get.find<ProofOfSaleViewModel>(),
        child: ScopedModelDescendant<ProofOfSaleViewModel>(
            builder: (context, child, model) {
          return Scaffold(
              appBar: AppBar(
                backgroundColor: Get.theme.colorScheme.secondaryContainer,
                title: const Text(
                  'Tạo chứng từ bán hàng',
                ),
              ),
              floatingActionButton: FilledButton.icon(
                onPressed: () {
                  model.createProofOfSale(proofOfSaleModelCreate);
                },
                icon: const Icon(
                  Icons.add,
                  size: 32,
                ),
                label: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text('Tạo',
                      style: Get.textTheme.titleMedium
                          ?.copyWith(color: Get.theme.colorScheme.onPrimary)),
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Thông tin chứng từ',
                      style: Get.textTheme.titleMedium,
                    ),
                    GridView.count(
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        shrinkWrap: true,
                        childAspectRatio: 8,
                        padding: const EdgeInsets.all(8.0),
                        physics: const ScrollPhysics(),
                        crossAxisCount: ResponsiveHelper.isDesktop()
                            ? 3
                            : ResponsiveHelper.isTab()
                                ? 2
                                : ResponsiveHelper.isSmallTab()
                                    ? 2
                                    : ResponsiveHelper.isMobile()
                                        ? 1
                                        : 1,
                        children: [
                          TextFormField(
                              initialValue: proofOfSaleModelCreate?.code ?? '',
                              decoration: InputDecoration(
                                labelText: 'Mã chứng từ',
                                hintText: 'Mã chứng từ',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  proofOfSaleModelCreate?.code = value;
                                });
                              }),
                          DropdownButtonFormField(
                              decoration: InputDecoration(
                                labelText: 'Thanh toán',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              items: [
                                DropdownMenuItem(
                                  child: const Text('Tiền mặt'),
                                  value: PaymentEnums.CASH.name,
                                ),
                                DropdownMenuItem(
                                  child: const Text('Chuyển khoản'),
                                  value: PaymentEnums.BANKING.name,
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  proofOfSaleModelCreate.payment = value;
                                });
                              }),
                          TextFormField(
                            onChanged: (value) {
                              setState(() {
                                proofOfSaleModelCreate.description = value;
                              });
                            },
                            decoration: InputDecoration(
                              labelText: 'Chi tiết',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          TextFormField(
                            initialValue: proofOfSaleModelCreate?.totalAmount
                                    ?.toString() ??
                                '',
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            decoration: InputDecoration(
                              labelText: 'Thành tiền',
                              hintText: 'Thành tiền',
                              suffixText: 'VND',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onChanged: (value) {
                              setState(() {
                                proofOfSaleModelCreate?.totalAmount =
                                    num.tryParse(value ?? '0');
                              });
                            },
                          ),
                          TextFormField(
                            initialValue:
                                proofOfSaleModelCreate?.vatAmount?.toString() ??
                                    '',
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            decoration: InputDecoration(
                              labelText: 'Thuế',
                              hintText: 'Thuế',
                              suffixText: 'VND',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onChanged: (value) {
                              setState(() {
                                proofOfSaleModelCreate?.vatAmount =
                                    num.tryParse(value ?? '0');
                              });
                            },
                          ),
                          TextFormField(
                            initialValue: proofOfSaleModelCreate?.finalAmount
                                    ?.toString() ??
                                '',
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            decoration: InputDecoration(
                              labelText: 'Tổng cộng',
                              hintText: 'Tổng cộng',
                              suffixText: 'VND',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onChanged: (value) {
                              setState(() {
                                proofOfSaleModelCreate.finalAmount =
                                    num.tryParse(value ?? '0');
                              });
                            },
                          ),
                        ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Danh sách sản phẩm',
                            style: Get.textTheme.titleMedium),
                        Container(
                          height: 60,
                          width: Get.width * 0.4,
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: filterController,
                            decoration: InputDecoration(
                              labelText: 'Tim kiếm sản phẩm',
                              hintText: 'Tên sản phẩm',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              suffixIcon: PopupMenuButton(
                                itemBuilder: (context) => model.inventoryItems
                                    .map((item) => PopupMenuItem(
                                          value: item,
                                          child: Text(item.name ?? ''),
                                        ))
                                    .toList(),
                                onSelected: (value) {
                                  setState(() {
                                    proofOfSaleItems.name = value.name ?? '';
                                    proofOfSaleItems.code = value.code;
                                    proofOfSaleItems.inventoryItemId =
                                        value.id ?? '';

                                    proofOfSaleItems.unitName =
                                        value.unitName ?? '';
                                    proofOfSaleItems.unitPrice =
                                        value.salePrice1 ?? 0;
                                    open = true;
                                  });
                                },
                                child: const Icon(
                                  Icons.search,
                                  size: 32,
                                ),
                              ),
                            ),
                            onChanged: (value) {
                              model.getFilterInventoryItem(value);
                            },
                          ),
                        ),
                      ],
                    ),
                    !open
                        ? SizedBox()
                        : Card(
                            child: ListTile(
                              title: Row(children: [
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Tên: ${proofOfSaleItems.name}",
                                      style: Get.textTheme.titleMedium,
                                    )),
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Mã SP: ${proofOfSaleItems.code}",
                                      style: Get.textTheme.titleMedium,
                                    )),
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Đơn vị tính: ${proofOfSaleItems.unitName}",
                                      style: Get.textTheme.titleMedium,
                                    )),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                      decoration: InputDecoration(
                                        labelText: 'Số lượng',
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          proofOfSaleItems.quantity =
                                              int.tryParse(value ?? "1");
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                      decoration: InputDecoration(
                                        suffixText: "VND",
                                        labelText: 'Đơn giá',
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          proofOfSaleItems.unitPrice =
                                              num.tryParse(value ?? '0');
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                      decoration: InputDecoration(
                                        suffixText: "VND",
                                        labelText: 'Thành tiền',
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          proofOfSaleItems.totalAmount =
                                              num.tryParse(value ?? '0');
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                      decoration: InputDecoration(
                                        suffixText: "VND",
                                        labelText: 'Thuế',
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          proofOfSaleItems.vatAmount =
                                              num.tryParse(value ?? '0');
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                      decoration: InputDecoration(
                                        suffixText: "VND",
                                        labelText: 'Tổng cộng',
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          proofOfSaleItems.finalAmount =
                                              num.tryParse(value ?? '0');
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ]),
                              trailing: OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      proofOfSaleModelCreate.items
                                          ?.add(proofOfSaleItems);
                                      proofOfSaleItems = Items();
                                      open = false;
                                    });
                                  },
                                  child: Text('Thêm')),
                            ),
                          ),
                    const Divider(),
                    SizedBox(
                      width: Get.width,
                      child: DataTable(
                          columns: const [
                            DataColumn(label: Text('Tên sản phẩm')),
                            DataColumn(label: Text('Mã sản phẩm')),
                            DataColumn(label: Text('Số lượng')),
                            DataColumn(label: Text('Đơn vị tính')),
                            DataColumn(label: Text('Đơn giá')),
                            DataColumn(label: Text('Thành tiền')),
                            DataColumn(label: Text('Thuế')),
                            DataColumn(label: Text('Tổng cộng')),
                          ],
                          rows: proofOfSaleModelCreate.items!
                              .map((item) => DataRow(cells: [
                                    DataCell(Text(item.name ?? '')),
                                    DataCell(Text(item.code ?? '')),
                                    DataCell(Text(item.quantity.toString())),
                                    DataCell(Text(item.unitName ?? '')),
                                    DataCell(
                                        Text(formatPrice(item.unitPrice ?? 0))),
                                    DataCell(Text(
                                        formatPrice(item.totalAmount ?? 0))),
                                    DataCell(
                                        Text(formatPrice(item.vatAmount ?? 0))),
                                    DataCell(Text(
                                        formatPrice(item.finalAmount ?? 0))),
                                  ]))
                              .toList()),
                    ),
                  ],
                ),
              ));
        }));
  }
}

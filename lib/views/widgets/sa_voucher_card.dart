import 'package:accounting_service/enums/proof_of_sale_status_enums.dart';
import 'package:accounting_service/models/response/proof_of_sale_preview_response.dart';
import 'package:accounting_service/utils/format.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sa_voucher_details_dialog.dart';

Widget proofOfSalePreviewCard(ProofOfSalePreviewModel proofOfSalePreviewModel) {
  return InkWell(
    onTap: () => {saVoucherDetailsDialog(proofOfSalePreviewModel.id ?? '')},
    child: Card(
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(proofOfSalePreviewModel.code.toString(),
                          style: Get.textTheme.titleSmall),
                      Text(
                          showProofOfSaleStatus(
                              proofOfSalePreviewModel.status ?? ''),
                          style: Get.textTheme.titleSmall
                              ?.copyWith(color: Get.theme.colorScheme.primary)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        formatTime(proofOfSalePreviewModel.createdAt ??
                            DateTime.now().toString()),
                      ),
                      Text(
                          showPaymentType(
                              proofOfSalePreviewModel.payment ?? 'CASH'),
                          style: Get.textTheme.titleSmall
                              ?.copyWith(color: Get.theme.colorScheme.primary)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(proofOfSalePreviewModel.createdBy ?? '',
                          style: Get.textTheme.titleSmall),
                      Text(
                          formatPrice(proofOfSalePreviewModel.totalAmount ?? 0),
                          style: Get.textTheme.titleSmall
                              ?.copyWith(color: Get.theme.colorScheme.primary)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

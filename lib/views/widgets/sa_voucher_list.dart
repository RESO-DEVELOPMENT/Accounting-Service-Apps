import 'package:accounting_service/view_models/proof_of_sale_view_model.dart';
import 'package:accounting_service/views/widgets/sa_voucher_card.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:scoped_model/scoped_model.dart';

import '../../enums/proof_of_sale_status_enums.dart';
import '../../enums/view_status.dart';
import '../../models/response/proof_of_sale_preview_response.dart';
import '../../routes/routes_constraints.dart';

class ProofOfSaleScreen extends StatefulWidget {
  const ProofOfSaleScreen({super.key});

  @override
  State<ProofOfSaleScreen> createState() => _ProofOfSaleScreenState();
}

class _ProofOfSaleScreenState extends State<ProofOfSaleScreen> {
  ProofOfSaleViewModel viewModel = Get.find<ProofOfSaleViewModel>();
  List<ProofOfSalePreviewModel> list = [];
  int selectedIndex = 0;
  List<ProofOfSaleStatusEnums> statusEnums = [
    ProofOfSaleStatusEnums.SMCreated,
    ProofOfSaleStatusEnums.AccountingChecked,
    ProofOfSaleStatusEnums.AccountingDenied,
    ProofOfSaleStatusEnums.SyncedMisa,
    ProofOfSaleStatusEnums.Canceled
  ];
  @override
  initState() {
    fetchListProofOfSaleByStatus(statusEnums[selectedIndex]);
    super.initState();
  }

  fetchListProofOfSaleByStatus(ProofOfSaleStatusEnums statusEnums) {
    viewModel.getListProofOfSale(proofOfSaleStatusEnums: statusEnums);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.theme.colorScheme.primaryContainer,
        title: const Text(
          'Chứng từ bán hàng',
        ),
      ),
      floatingActionButton: FilledButton.icon(
        onPressed: () {
          Get.toNamed(RouteHandler.CREATE_PROOF_OF_SALE);
        },
        icon: const Icon(
          Icons.add,
          size: 32,
        ),
        label: Padding(
          padding: const EdgeInsets.all(16),
          child: Text('Tạo mới',
              style: Get.textTheme.titleMedium
                  ?.copyWith(color: Get.theme.colorScheme.onPrimary)),
        ),
      ),
      body: ScopedModel<ProofOfSaleViewModel>(
          model: viewModel,
          child: ScopedModelDescendant<ProofOfSaleViewModel>(
              builder: (context, child, model) {
            return model.status == ViewStatus.Loading
                ? const Center(child: CircularProgressIndicator())
                : Column(
                    children: [
                      SizedBox(
                        height: 60,
                        child: ListView.builder(
                            itemCount: statusEnums.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    backgroundColor: selectedIndex == index
                                        ? Get.theme.colorScheme.surfaceVariant
                                        : Get.theme.colorScheme.background,
                                  ),
                                  child: Text(statusEnums[index].displayTitle),
                                  onPressed: () {
                                    setState(() {
                                      selectedIndex = index;
                                    });
                                    fetchListProofOfSaleByStatus(
                                        statusEnums[index]);
                                  },
                                ),
                              );
                            }),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: model.proofOfSalePreviewList.length,
                          itemBuilder: (context, index) {
                            return proofOfSalePreviewCard(
                                model.proofOfSalePreviewList[index]);
                          },
                        ),
                      ),
                    ],
                  );
          })),
    );
  }
}

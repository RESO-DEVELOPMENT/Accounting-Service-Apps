import 'dart:convert';

import 'package:accounting_service/apis/request.dart';
import 'package:accounting_service/models/misa_connect/misa_connect_response_model.dart';
import 'package:accounting_service/models/request/proof_of_sale_create_request.dart';
import 'package:accounting_service/models/response/inventory_item.dart';

import '../enums/proof_of_sale_status_enums.dart';
import '../models/response/proof_of_sale_preview_response.dart';
import '../models/response/savoucher_details_response.dart';
import '../utils/app_constants.dart';

class ProofOfSaleApi {
  Future<String> getProofOfSale() async {
    await Future.delayed(Duration(seconds: 2));
    return 'Proof of sale';
  }

  Future<dynamic> createProofOfSale(ProofOfSaleModel proofOfSaleModel) async {
    print(proofOfSaleModel.toJson());
    var res = await request.post(AppConstants.PROOF_OF_SALE_CREATE,
        data: proofOfSaleModel.toJson());
    return res.data;
  }

  Future<List<ProofOfSalePreviewModel>> getProofOfSaleList(
      {ProofOfSaleStatusEnums? proofOfSaleStatusEnums}) async {
    var res;
    if (proofOfSaleStatusEnums == null) {
      res = await request.get(
        AppConstants.PROOF_OF_SALE_CREATE,
      );
    } else {
      res = await request.get(AppConstants.PROOF_OF_SALE_CREATE,
          queryParameters: {"status": proofOfSaleStatusEnums.name});
    }

    return (res.data as List)
        .map((e) => ProofOfSalePreviewModel.fromJson(e))
        .toList();
  }

  Future<List<InventoryItem>> getListInventoryItem(String? filter) async {
    var res = await request.get(AppConstants.INVENTORY_ITEM_FILTER,
        queryParameters: {"name": filter});
    return (res.data as List).map((e) => InventoryItem.fromJson(e)).toList();
  }

  Future<SAVoucherDetailsResponse> getSAVoucherDetails(String id) async {
    var res = await request.get("${AppConstants.PROOF_OF_SALE_DETAILS}$id");
    return SAVoucherDetailsResponse.fromJson(res.data);
  }

  Future<dynamic> updateSAVoucher(
      String id, String notes, String status) async {
    Map<String, dynamic> body = {
      "notes": notes,
      "status": status,
    };
    var res = await request.put("${AppConstants.PROOF_OF_SALE_DETAILS}$id",
        data: jsonEncode(body));
    return res.data;
  }

  Future<MisaResponseModel> syncSAVoucherToMisa(String id) async {
    var res = await request.post(
      "${AppConstants.SYNC_SAVOUCHER_MISA}$id",
    );
    return MisaResponseModel.fromJson(res.data);
  }
}

import 'package:accounting_service/apis/proof_of_sale_api.dart';
import 'package:accounting_service/enums/proof_of_sale_status_enums.dart';
import 'package:accounting_service/enums/view_status.dart';
import 'package:accounting_service/models/misa_connect/misa_connect_response_model.dart';
import 'package:accounting_service/models/request/proof_of_sale_create_request.dart';
import 'package:accounting_service/models/response/inventory_item.dart';
import 'package:accounting_service/models/response/proof_of_sale_preview_response.dart';
import 'package:accounting_service/models/response/savoucher_details_response.dart';
import 'package:accounting_service/view_models/base_view_model.dart';
import 'package:get/get.dart';

import '../views/widgets/other_dialogs/dialog.dart';

class ProofOfSaleViewModel extends BaseViewModel {
  ProofOfSaleModel proofOfSaleModelCreate = ProofOfSaleModel();
  ProofOfSaleApi proofOfSaleApi = ProofOfSaleApi();
  List<ProofOfSalePreviewModel> proofOfSalePreviewList = [];
  List<InventoryItem> inventoryItems = [];
  ViewStatus status = ViewStatus.Completed;
  bool isLoading = false;
  ProofOfSaleViewModel() {
    initialCreateProofOfSale();
  }

  void initialCreateProofOfSale() {
    proofOfSaleModelCreate.items = [];
  }

  Future<void> createProofOfSale(ProofOfSaleModel proofOfSaleModel) async {
    try {
      showLoadingDialog();
      status = ViewStatus.Loading;
      var res = await proofOfSaleApi.createProofOfSale(proofOfSaleModel);
      status = ViewStatus.Completed;
      hideDialog();
      print(res);
      Get.back();
      Get.snackbar("Tạo hoá đơn", res.toString());
    } catch (e) {
      status = ViewStatus.Error;
      hideDialog();
      showAlertDialog(
          title: "Tạo hóa đơn thất bại", content: "Vui lòng kiểm tra lại");
    }
  }

  Future<void> getListProofOfSale(
      {ProofOfSaleStatusEnums? proofOfSaleStatusEnums}) async {
    try {
      setState(ViewStatus.Loading);
      var res = await proofOfSaleApi.getProofOfSaleList(
          proofOfSaleStatusEnums: proofOfSaleStatusEnums);
      print(res);
      proofOfSalePreviewList = res;
      setState(ViewStatus.Completed);
    } catch (e) {
      status = ViewStatus.Error;
      proofOfSalePreviewList = [];
      notifyListeners();
      showAlertDialog(
          title: "Lấy danh sách hoá đơn thất bại",
          content: "Vui lòng kiểm tra lại");
    }
  }

  Future<void> getFilterInventoryItem(String? filter) async {
    try {
      status = ViewStatus.Loading;
      var res = await proofOfSaleApi.getListInventoryItem(filter);
      print(res);
      status = ViewStatus.Completed;
      inventoryItems = res;
    } catch (e) {
      status = ViewStatus.Error;
      showAlertDialog(
          title: "Lấy danh sách hoá đơn thất bại",
          content: "Vui lòng kiểm tra lại");
      inventoryItems = [];
    }
  }

  void addProofOfSaleItem(Items items) async {
    proofOfSaleModelCreate.items?.add(items);
    notifyListeners();
    print(items.toJson());
  }

  Future<SAVoucherDetailsResponse> getSaVoucherDetails(String id) {
    return proofOfSaleApi.getSAVoucherDetails(id);
  }

  Future<void> updateSAVoucher(String id, String notes, String status) async {
    try {
      showLoadingDialog();
      var res = await proofOfSaleApi.updateSAVoucher(id, notes, status);
      showAlertDialog(title: "Cập nhật thành công", content: res.toString());
    } catch (e) {
      print(e);
    }
  }

  Future<void> syncSAVoucherToMisa(String id) async {
    try {
      showLoadingDialog();
      MisaResponseModel res = await proofOfSaleApi.syncSAVoucherToMisa(id);
      showAlertDialog(
          title: (res.success == true)
              ? "Cập nhật thành công"
              : "Cập nhật thất bại",
          content: res.errorMessage ?? '');
    } catch (e) {
      print(e);
    }
  }
}

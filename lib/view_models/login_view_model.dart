import 'package:get/get.dart';

import '../apis/account_api.dart';
import '../enums/account_enums.dart';
import '../models/account.dart';
import '../routes/routes_constraints.dart';
import '../utils/share_pref.dart';
import '../views/widgets/other_dialogs/dialog.dart';
import 'base_view_model.dart';

class LoginViewModel extends BaseViewModel {
  AccountData dao = AccountData();
  AccountModel? userDTO;
  LoginViewModel() {
    userDTO = AccountModel();
  }
  void posLogin(String userName, String password) async {
    try {
      showLoadingDialog();
      dao.login(userName, password).then((value) => {
            userDTO = value,
            if (userDTO == null)
              {
                hideDialog(),
                showAlertDialog(
                    title: "Đăng nhập thất bại",
                    content: "Vui lòng kiểm tra lại tài khoản và mật khẩu")
              }
            else
              {
                setUserInfo(userDTO!),
                setToken(userDTO!.accessToken ?? '', userDTO!.role ?? ''),
                print(RoleEnums.Accounting.name),
                if (userDTO?.role == RoleEnums.Accounting.name)
                  {Get.offAllNamed(RouteHandler.ACCOUNTING_HOME)}
                else if (userDTO?.role == RoleEnums.AreaManager.name)
                  {Get.offAllNamed(RouteHandler.AM_HOME)}
                else
                  {Get.offAllNamed(RouteHandler.SM_HOME)},
                hideDialog(),
              }
          });
    } catch (e) {
      showAlertDialog(
          title: "Đăng nhập thất bại", content: "Vui lòng kiểm tra lại");
    }
  }

  Future<void> logout() async {
    await deleteUserInfo();
    await Get.offAllNamed(RouteHandler.LOGIN);
    Get.snackbar("Đăng xuất", "Đăng xuất thành công");
  }

  Future<bool> isUserLogin() async {
    return await dao.isUserLoggedIn();
  }
}

import 'package:accounting_service/apis/request.dart';
import 'package:accounting_service/view_models/base_view_model.dart';
import 'package:accounting_service/view_models/login_view_model.dart';
import 'package:accounting_service/enums/account_enums.dart';
import 'package:accounting_service/models/account.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../routes/routes_constraints.dart';
import '../utils/share_pref.dart';

class StartUpViewModel extends BaseViewModel {
  bool firstTimeConnectionCheck = true;
  StartUpViewModel() {
    handleStartUpLogic();
  }

  Future handleStartUpLogic() async {
    await Future.delayed(const Duration(seconds: 2));
    AccountModel? account = await getUserInfo();
    if (kDebugMode) {
      print(account?.role);
    }
    bool isUserLoggedIn = await Get.find<LoginViewModel>().isUserLogin();
    if (!isUserLoggedIn && account == null) {
      Get.offAllNamed(RouteHandler.LOGIN);
    } else {
      Get.find<LoginViewModel>().userDTO = account;
      requestObj.setToken = await getToken();
      if (account?.role == RoleEnums.Accounting.name) {
        Get.offAllNamed(RouteHandler.ACCOUNTING_HOME);
      } else if (account?.role == RoleEnums.AreaManager.name) {
        Get.offAllNamed(RouteHandler.AM_HOME);
      } else {
        Get.offAllNamed(RouteHandler.SM_HOME);
      }
    }
  }

  void setFirstTimeConnectionCheck(bool isChecked) {
    firstTimeConnectionCheck = isChecked;
  }
}

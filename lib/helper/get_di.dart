import 'package:accounting_service/apis/account_api.dart';
import 'package:accounting_service/apis/request.dart';
import 'package:accounting_service/view_models/login_view_model.dart';
import 'package:accounting_service/view_models/misa_view_model.dart';
import 'package:accounting_service/view_models/proof_of_sale_view_model.dart';
import 'package:accounting_service/models/account.dart';
import 'package:accounting_service/utils/share_pref.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../view_models/startup_view_model.dart';
import '../view_models/theme_view_model.dart';
import 'package:firebase_core/firebase_core.dart';

import '../firebase_options.dart';
import '../routes/routes_constraints.dart';

Future<void> init() async {
  Get.put(StartUpViewModel());
  Get.put(ThemeViewModel());
  Get.put(LoginViewModel());
  Get.put(ProofOfSaleViewModel());
  Get.put(MisaViewModel());
  requestObj.setToken = await getToken();
}

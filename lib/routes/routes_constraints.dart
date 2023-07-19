// ignore_for_file: constant_identifier_names

import 'package:accounting_service/views/screens/startup.dart';
import 'package:get/get.dart';

import '../views/screens/accounting/accounting_home.dart';
import '../views/screens/area_manager/area_manager_home.dart';
import '../views/screens/login.dart';
import '../views/screens/store_manager.dart/payment_request.dart';
import '../views/widgets/sa_voucher_list.dart';
import '../views/screens/store_manager.dart/store_manager_home.dart';
import '../views/screens/store_manager.dart/widgets/create_sa_voucher_dialog.dart';

class RouteHandler {
  static const String LOGIN = "/login";
  static const String HOME = "/home";
  static const String NAV = "/nav";
  static const String WELCOME = "/welcome";
  static const String NOT_FOUND = "/not_found";
  static const String PERSONAL_INFO = "/personal_info";

  //Store Manager Role
  static const String SM_HOME = "/store_manager_home";
  static const String PAYMENT_REQUEST = SM_HOME + "/payment_request";
  static const String PROOF_OF_SALE = SM_HOME + "/proof_of_sale";
  static const String CREATE_PROOF_OF_SALE = PROOF_OF_SALE + "/create";
  static const String INVOICE = SM_HOME + "/invoice";
  static const String INVENTORY = SM_HOME + "/inventory";

  //Area Manager Role
  static const String AM_HOME = "/area_manager_home";

  //Accounting Role
  static const String ACCOUNTING_HOME = "/accounting_home";
  static const String CHECK_SAVOUCHER = ACCOUNTING_HOME + "/savoucher";

  static List<GetPage> routes = [
    GetPage(
        transitionDuration: Duration(milliseconds: 500),
        name: RouteHandler.WELCOME,
        page: () => StartUpView(),
        transition: Transition.zoom),
    GetPage(
        transitionDuration: Duration(milliseconds: 500),
        name: RouteHandler.LOGIN,
        page: () => LogInScreen(),
        transition: Transition.zoom),
    GetPage(
        transitionDuration: Duration(milliseconds: 500),
        name: RouteHandler.SM_HOME,
        page: () => StoreManagerHome(),
        transition: Transition.cupertino),
    GetPage(
        transitionDuration: Duration(milliseconds: 500),
        name: RouteHandler.AM_HOME,
        page: () => AreaManagerHome(),
        transition: Transition.cupertino),
    GetPage(
        transitionDuration: Duration(milliseconds: 500),
        name: RouteHandler.ACCOUNTING_HOME,
        page: () => AccountingHome(),
        transition: Transition.cupertino),
    GetPage(
        transitionDuration: Duration(milliseconds: 500),
        name: RouteHandler.PAYMENT_REQUEST,
        page: () => PaymentRequestScreen(),
        transition: Transition.cupertino),
    GetPage(
        transitionDuration: Duration(milliseconds: 500),
        name: RouteHandler.PROOF_OF_SALE,
        page: () => ProofOfSaleScreen(),
        transition: Transition.cupertino),
    GetPage(
        transitionDuration: Duration(milliseconds: 500),
        name: RouteHandler.CREATE_PROOF_OF_SALE,
        page: () => CreateProofOfSaleScreen(),
        transition: Transition.cupertino),
  ];
}

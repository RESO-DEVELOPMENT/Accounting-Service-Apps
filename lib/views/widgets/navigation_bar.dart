import 'package:accounting_service/models/account.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../enums/account_enums.dart';
import '../../routes/routes_constraints.dart';
import '../../utils/share_pref.dart';
import '../../view_models/login_view_model.dart';

NavigationDrawer getNavigationDrawer() {
  AccountModel? account;
  getUserInfo().then((value) => account = value);

  return NavigationDrawer(
    children: [
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.teal,
        ),
        child: Text(
          'Navigation Drawer',
          style: TextStyle(fontSize: 20),
        ),
      ),
      ListTile(
        leading: const Icon(Icons.payment),
        title: const Text('Yêu cầu thanh toán'),
        onTap: () => Get.toNamed(RouteHandler.PAYMENT_REQUEST),
      ),
      ListTile(
        leading: Icon(Icons.edit_document),
        title: const Text('Chứng từ bán hàng'),
        onTap: () => Get.toNamed(RouteHandler.PROOF_OF_SALE),
      ),
      ListTile(
        leading: Icon(Icons.receipt),
        title: const Text('Hoá đơn'),
        onTap: () {
          // Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(Icons.inventory),
        title: const Text('Kiểm kê'),
        onTap: () {
          // Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(Icons.person),
        title: const Text('Thông tin cá nhân'),
        onTap: () {
          // Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(Icons.logout),
        title: const Text('Đăng xuất'),
        onTap: () {
          Get.find<LoginViewModel>().logout();
        },
      ),
    ],
  );
}

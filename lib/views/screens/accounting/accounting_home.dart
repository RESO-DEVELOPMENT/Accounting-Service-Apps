import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../view_models/login_view_model.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/navigation_bar.dart';

class AccountingHome extends StatefulWidget {
  const AccountingHome({super.key});

  @override
  State<AccountingHome> createState() => _AccountingHomeState();
}

class _AccountingHomeState extends State<AccountingHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: getNavigationDrawer(),
      appBar: buildAppBar(context, "Xin chào"),
      body: const Center(
        child: Text('Trang chủ kế toán'),
      ),
    );
  }
}

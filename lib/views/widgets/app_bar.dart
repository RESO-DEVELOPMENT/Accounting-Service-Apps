import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/account.dart';
import '../../utils/share_pref.dart';

AppBar buildAppBar(BuildContext context, String title) {
  return AppBar(
    backgroundColor: Get.theme.colorScheme.primaryContainer,
    title: Text(title),
  );
}

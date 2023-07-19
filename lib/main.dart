import 'dart:io';

import 'package:accounting_service/routes/routes_constraints.dart';
import 'package:accounting_service/theme/dark_theme.dart';
import 'package:accounting_service/theme/light_theme.dart';
import 'package:accounting_service/views/screens/accounting/accounting_home.dart';
import 'package:accounting_service/views/screens/area_manager/area_manager_home.dart';
import 'package:accounting_service/views/screens/store_manager.dart/payment_request.dart';
import 'package:accounting_service/views/widgets/sa_voucher_list.dart';
import 'package:accounting_service/views/screens/store_manager.dart/store_manager_home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:url_strategy/url_strategy.dart';

import 'apis/request.dart';
import 'firebase_options.dart';
import 'view_models/theme_view_model.dart';
import 'utils/app_constants.dart';
import 'views/screens/login.dart';
import 'views/screens/not_found_screen.dart';
import 'views/screens/startup.dart';
import 'helper/get_di.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  if (!GetPlatform.isWeb) {
    HttpOverrides.global = MyHttpOverrides();
  }
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScopedModel<ThemeViewModel>(
        model: ThemeViewModel(),
        child: ScopedModelDescendant<ThemeViewModel>(
            builder: (context, child, model) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: AppConstants.APP_NAME,
            themeMode: ThemeMode.light,
            navigatorKey: Get.key,
            theme: model.darkTheme ? dark : light,
            getPages: RouteHandler.routes,
            initialRoute: RouteHandler.WELCOME,
            unknownRoute: GetPage(
                name: RouteHandler.NAV, page: () => const NotFoundScreen()),
          );
        }));
  }
}

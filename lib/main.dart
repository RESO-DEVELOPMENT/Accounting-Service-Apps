import 'dart:io';

import 'package:accounting_service/routes/routes_constraints.dart';
import 'package:accounting_service/theme/dark_theme.dart';
import 'package:accounting_service/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'apis/request.dart';
import 'controllers/theme_controller.dart';
import 'utils/app_constants.dart';
import 'views/screens/login.dart';
import 'views/screens/not_found_screen.dart';
import 'views/screens/startup.dart';
import 'helper/get_di.dart' as di;

void main() {
  if (!GetPlatform.isWeb) {
    HttpOverrides.global = MyHttpOverrides();
  }
  WidgetsFlutterBinding.ensureInitialized();
  di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return GetBuilder<ThemeController>(builder: (themeController) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppConstants.APP_NAME,
        themeMode: ThemeMode.light,
        navigatorKey: Get.key,
        theme: themeController.darkTheme ? dark : light,
        getPages: [
          GetPage(
              name: RouteHandler.WELCOME,
              page: () => StartUpView(),
              transition: Transition.zoom),
          GetPage(
              name: RouteHandler.LOGIN,
              page: () => LogInScreen(),
              transition: Transition.zoom),
          GetPage(
              name: RouteHandler.HOME,
              page: () => NotFoundScreen(),
              transition: Transition.cupertino),
        ],
        initialRoute: RouteHandler.LOGIN,
        unknownRoute:
            GetPage(name: RouteHandler.NAV, page: () => NotFoundScreen()),
      );
    });
  }
}

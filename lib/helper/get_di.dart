import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../controllers/theme_controller.dart';

Future<void> init() async {
  // Core
  final sharedPreferences = await SharedPreferences.getInstance();
  Get.lazyPut(() => sharedPreferences);
  // // Repository
  // Get.lazyPut(
  //     () => SplashRepo(sharedPreferences: Get.find(), apiClient: Get.find()));
  // Get.lazyPut(() => LanguageRepo());
  // Get.lazyPut(() => ProductRepo(apiClient: Get.find()));
  // Get.lazyPut(() => CartRepo(sharedPreferences: Get.find()));
  // Get.lazyPut(
  //     () => OrderRepo(sharedPreferences: Get.find(), apiClient: Get.find()));

  // // Controller
  Get.lazyPut(() => ThemeController(sharedPreferences: Get.find()));
  // Get.lazyPut(() => SplashController(splashRepo: Get.find()));
  // Get.lazyPut(() => LocalizationController(sharedPreferences: Get.find()));
  // Get.lazyPut(() => LanguageController(sharedPreferences: Get.find()));
  // Get.lazyPut(() => ProductController(productRepo: Get.find()));
  // Get.lazyPut(() => CartController(cartRepo: Get.find()));
  // Get.lazyPut(() => PromotionalController());
  // Get.lazyPut(() => OrderController(orderRepo: Get.find()));

  // Retrieving localized data
}

import 'package:get/get.dart';

class LoginController extends GetxController implements GetxService {
  // AccountData dao = AccountData();
  // Account? userDTO;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // void posLogin(String userName, String password) async {
  //   try {
  //     showLoadingDialog();
  //     dao.login(userName, password).then((value) => {
  //           userDTO = value,
  //           if (userDTO == null)
  //             {
  //               hideDialog(),
  //               showAlertDialog(
  //                   title: "Đăng nhập thất bại",
  //                   content: "Vui lòng kiểm tra lại tài khoản và mật khẩu")
  //             }
  //           else
  //             {
  //               setUserInfo(userDTO!),
  //               setState(ViewStatus.Completed),
  //               hideDialog(),
  //               Get.offAllNamed(RouteHandler.HOME)
  //             }
  //         });
  //   } catch (e) {
  //     setState(ViewStatus.Error);
  //   }
  // }

  // Future<void> logout() async {
  //   userDTO = null;
  //   Get.snackbar("Đăng xuất", "Đăng xuất thành công");
  //   await deleteUserInfo();
  //   await Get.offAllNamed(RouteHandler.LOGIN);
  // }
}

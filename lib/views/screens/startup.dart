import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartUpView extends StatelessWidget {
  const StartUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/images/logo.png",
          width: Get.size.width * 0.2,
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:accounting_service/view_models/startup_view_model.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoped_model/scoped_model.dart';

class StartUpView extends StatefulWidget {
  const StartUpView({Key? key}) : super(key: key);

  @override
  State<StartUpView> createState() => _StartUpViewState();
}

class _StartUpViewState extends State<StartUpView> with WidgetsBindingObserver {
  late StreamSubscription<ConnectivityResult> _onConnectivityChanged;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    bool _firstTime = true;
    _onConnectivityChanged = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      if (!_firstTime) {
        bool isNotConnected = result != ConnectivityResult.wifi &&
            result != ConnectivityResult.mobile;
        isNotConnected
            ? SizedBox()
            : ScaffoldMessenger.of(context).hideCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: isNotConnected ? Colors.red : Colors.green,
          duration: Duration(seconds: isNotConnected ? 6000 : 3),
          content: Text(
            isNotConnected
                ? 'Mất kết nối internet'
                : 'Kết nối internet thành công',
            textAlign: TextAlign.center,
          ),
        ));
        if (!isNotConnected) {
          Get.find<StartUpViewModel>().handleStartUpLogic();
        }
      }
      _firstTime = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModel<StartUpViewModel>(
        model: StartUpViewModel(),
        child: Scaffold(
          body: Center(
              child: Icon(
            Icons.account_balance,
            size: 100,
            color: Get.theme.primaryColor,
          )),
        ));
  }
}

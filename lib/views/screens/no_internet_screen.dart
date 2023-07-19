import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/images.dart';

class NoInternetScreen extends StatelessWidget {
  final Widget child;
  const NoInternetScreen({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.025),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Images.no_internet, width: 150, height: 150),
            Text(
              'oops'.tr,
            ),
            SizedBox(height: 10),
            Text(
              'no_internet_connection'.tr,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            Container(
                height: 45,
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: OutlinedButton(
                  onPressed: () async {
                    if (await Connectivity().checkConnectivity() !=
                        ConnectivityResult.none) {
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (_) => child));
                    }
                  },
                  child: Text("Thử lại"),
                )),
          ],
        ),
      ),
    );
  }
}

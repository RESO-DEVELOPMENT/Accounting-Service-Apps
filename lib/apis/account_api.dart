import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../models/account.dart';
import '../utils/share_pref.dart';
import 'request.dart';

class AccountData {
  Future<AccountModel?> login(String username, String password) async {
    try {
      Response response = await request.post("auth/login",
          data: {"username": username, "password": password});

      if (response.statusCode?.compareTo(200) == 0) {
        final user = response.data;
        final accessToken = user['accessToken'] as String;
        final userRole = user['role'] as String;
        requestObj.setToken = accessToken;
        // .setToken = accessToken;
        setToken(accessToken, userRole);

        AccountModel userResponse = AccountModel.fromJson(user);
        return userResponse;
      } else {
        return null;
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error login (account_dao): ${e.toString()}');
      }
    }
    return null;
  }

  Future<bool> isUserLoggedIn() async {
    bool isTokenExpired = await expireToken();
    String token = await getToken();
    if (isTokenExpired) {
      setToken("", "");
      return false;
    }
    if (!isTokenExpired && token.isNotEmpty) {
      requestObj.setToken = token;
    }
    return token.isNotEmpty;
  }
}

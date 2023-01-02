import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kmbiame/src/features/layout/layout_screen.dart';
import 'package:kmbiame/src/models/logic/user_register_logical_model.dart';
import 'package:kmbiame/src/shared/app_info.dart';
import 'package:kmbiame/src/shared/extensions.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:kmbiame/src/features/home/screen/home_screen.dart';

import '../../resources/urls.dart';

class AuthRepository {
  Future<void> logIn(
    BuildContext context, {
    required String username,
    required String password,
  }) async {
     Future<SharedPreferences> preferences = SharedPreferences.getInstance();
    SharedPreferences prefs = await preferences;

    Map<String, String> body = {"username": username, "password": password};
    Uri targetUrl = Uri.parse(Urls.login);
    var response = await http.post(targetUrl, body: body);
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 201) {
       final jsonResponse = jsonDecode(response.body);
        UserRegisterLogicalModel userRegisterLogicalModel =
            UserRegisterLogicalModel.fromJson(jsonResponse);
        prefs.setString("token", userRegisterLogicalModel.token);
        AppInfo? appInfo = await AppInfo.getInstace(context);

        appInfo!.setUser(userRegisterLogicalModel.userBaseModel);
    } else {
      try {
        var decodeResponse = jsonDecode(response.body);
        String errorMesagge = decodeResponse["message"];
        if (errorMesagge != '') {
          throw (errorMesagge);
        } else {
          throw (context.loc.unexpectedError);
        }
      } catch (e) {
        throw (e.toString());
      }
    }
  }

  Future<void> register(BuildContext context, String username, String password,
      String phone) async {
    Future<SharedPreferences> preferences = SharedPreferences.getInstance();
    SharedPreferences prefs = await preferences;
    Map<String, String> registerUser = {
      "username": username,
      "password": password,
      "phone": phone
    };
    Uri targetUrl = Uri.parse(Urls.signup);

    try {
      var response = await http.post(targetUrl, body: registerUser);

      if (response.statusCode == 201) {
        final jsonResponse = jsonDecode(response.body);
        UserRegisterLogicalModel userRegisterLogicalModel =
            UserRegisterLogicalModel.fromJson(jsonResponse);
        prefs.setString("token", userRegisterLogicalModel.token);
        AppInfo? appInfo = await AppInfo.getInstace(context);

        appInfo!.setUser(userRegisterLogicalModel.userBaseModel);
      }
    } catch (e) {
      print(e);
    }
  }
}

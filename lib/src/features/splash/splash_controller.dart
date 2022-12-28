// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kmbiame/src/features/auth/login_screen.dart';
import 'package:kmbiame/src/features/auth/register_screen.dart';
import 'package:kmbiame/src/features/home/screen/home_screen.dart';
import 'package:kmbiame/src/features/layout/layout_screen.dart';
import 'package:kmbiame/src/shared/extensions.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../shared/app_info.dart';

class SplashController {
  /*static Future<void> checkLogin(BuildContext context) async {
    Future<SharedPreferences> preferences = SharedPreferences.getInstance();
    final SharedPreferences prefs = await preferences;
    AppInfo? appInfo = await AppInfo.getInstace(context);

    //Verificar si ya el usuario tiene un token registrado
    String? token = prefs.getString("token");
   if (appInfo!.user == null && appInfo.token.isNotEmpty) {
        appInfo.removeToken();
        throw (context.loc.wrongLogin);
      }
    if (token == null) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return const LoginScreen();
      }));
    } else {

      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return const LayoutScreen();
      }));
    }
  }*/

   static Future<void> checkLogin(BuildContext cntxt) async {
    try {
      AppInfo? appInfo = await AppInfo.getInstace(cntxt);
      //await getInitialData(cntxt);
      if (appInfo!.user == null && appInfo.token.isNotEmpty) {
        appInfo.removeToken();
        throw (cntxt.loc.wrongLogin);
      } else if(appInfo.user == null){
        Navigator.of(cntxt).pushReplacement(MaterialPageRoute(builder: (context)=>const RegisterScreen()));
      }
        else {
        //Navigator.of(cntxt).pop();
        Navigator.of(cntxt).push(MaterialPageRoute(builder: (context) {
          return const LayoutScreen();
        }));
      }
    } catch (e) {
      print(e);
      /*await showDialog(
        barrierDismissible: false,
        context: cntxt,
        builder: (context) => WillPopScope(
            onWillPop: Utils.exitApp(),
            child: LoginErrorDialog(errorText: e.toString())),
      );*/
    }
  }

  /*static Future<void> getInitialData(BuildContext context) async {
    List<TeamBaseModel> teams = await TeamRepository().getTeams(context);
    AppInfo? appInfo = await AppInfo.getInstace(context);
    appInfo?.setTeams(teams);
  }*/

  static Future<bool> Function()? exitApp() => () async {
        if (Platform.isAndroid) {
          SystemNavigator.pop();
        } else if (Platform.isIOS) {
          exit(0);
        }
        return false;
      };
}

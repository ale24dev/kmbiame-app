import 'package:flutter/material.dart';
import 'package:kmbiame/src/models/user_base_model.dart';
import 'package:kmbiame/src/repositories/user_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppInfo {
  static AppInfo? _appInfo;
  UserBaseModel? _user;
  late String _token;

  String get token => _token;
  UserBaseModel? get user => _user;

  void setToken(String value) {
    _token = value;
  }

  void setUser(UserBaseModel? user) {
    _user = user;
  }

  AppInfo._() {
    _token = '';
  }

  static Future<AppInfo?> getInstace(BuildContext context) async {
    if (_appInfo == null) {
      _appInfo = AppInfo._();
      await initialize(context);
    }
    return _appInfo;
  }

  static Future initialize(BuildContext context) async {
    Future<SharedPreferences> preferences = SharedPreferences.getInstance();
    final SharedPreferences prefs = await preferences;
    String token = prefs.getString('token') ?? '';
    if (token.isNotEmpty) {
      _appInfo!.setToken(token);
      try {
        UserBaseModel? user = await UserRepository().getUser(context, token);
        _appInfo!.setUser(user!);
      } catch (e) {
        _appInfo!.setUser(null);
      }
    } else {
      _appInfo!.setToken('');
    }
  }

  Future<void> removeToken() async {
    Future<SharedPreferences> preferences = SharedPreferences.getInstance();
    final SharedPreferences prefs = await preferences;
    prefs.remove('token');
    _token = '';
  }
}

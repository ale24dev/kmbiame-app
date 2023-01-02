import 'package:flutter/material.dart';
import 'package:kmbiame/src/shared/app_info.dart';

import '../../../resources/urls.dart';

class Utils {
  /// Metodo para cerrar sesion
  static void logOut(BuildContext context) async {
    AppInfo? appInfo = await AppInfo.getInstace(context);

    appInfo?.removeToken();
    appInfo?.setUser(null);
  }
}

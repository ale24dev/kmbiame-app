import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kmbiame/src/models/user_base_model.dart';
import 'package:kmbiame/src/shared/extensions.dart';

import '../../resources/urls.dart';

class UserRepository{

Future<UserBaseModel?> getUser(BuildContext context, String token) async {
    Locale myLocale = Localizations.localeOf(context);
    String lc = myLocale.toLanguageTag();
    Map<String, String> headers = {
      "Accept-Language": lc,
      "Authorization": 'Bearer $token'
    };
    Uri targetUrl = Uri.parse(Urls.getUser);
    var response = await http.get(targetUrl, headers: headers);
    
    if (response.statusCode == 200) {
      var decodeResponse = jsonDecode(response.body);
      UserBaseModel user = UserBaseModel.fromJson(decodeResponse);
      return user;
    } else {
      var decodeResponse = jsonDecode(response.body);
      String clientError = decodeResponse["message"];
      if (clientError.isNotEmpty) {
        throw (clientError);
      } else {
        throw (context.loc.unexpectedError);
      }
    }
  }

}
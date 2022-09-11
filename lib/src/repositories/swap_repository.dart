import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kmbiame/src/models/logic/swap_logical_model.dart';

import 'package:kmbiame/src/shared/extensions.dart';

import '../../resources/urls.dart';

class SwapRepository {
  Future<List<SwapLogicalModel>> getAllSwaps(BuildContext context) async {
    List<SwapLogicalModel> swaps = [];

    Uri targetUrl = Uri.parse(Urls.getAllSwaps);

    var response = await http.get(targetUrl);
    if (response.statusCode == 200) {
      var decodeResponse = jsonDecode(response.body);
      decodeResponse.forEach((teamJson) {
        swaps.add(SwapLogicalModel.fromJson(teamJson));
      });

      return swaps;
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

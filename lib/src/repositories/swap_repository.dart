import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kmbiame/src/models/logic/swap_logical_model.dart';
import 'package:kmbiame/src/shared/constants/article_type.dart';

import 'package:kmbiame/src/shared/extensions.dart';
import 'package:kmbiame/src/shared/utils_function.dart';

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

  Future<List<SwapLogicalModel>> getSwapsByArticleCategory(
      BuildContext context, ArticleType articleType) async {
    List<SwapLogicalModel> swaps = [];
    String lc = UtilsFunction.getLanguage(context);

    Map<String, String> headers = {"Accept-Language": lc};
    Map<String, dynamic> parameters = {"type": UtilsFunction.getStringCategoryByEnum(articleType)};

    Uri targetUrl = Uri.parse(UtilsFunction.createGetUrl(
        baseUrl: Urls.getSwapsByCategoryArticle, params: parameters));
    var response = await http.get(targetUrl, headers: headers);
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

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kmbiame/src/shared/constants/article_type.dart';

class UtilsFunction {
  static String getDateByPosition(BuildContext context, int pos) {
    final lc = getLanguage(context);

    switch (pos) {
      case 0:
        if (lc == "es") return "Lunes";
        return "Monday";
      case 1:
        if (lc == "es") return "Martes";
        return "Tuesday";
      case 2:
        if (lc == "es") return "Miércoles";
        return "Wednesday";
      case 3:
        if (lc == "es") return "Jueves";
        return "Thursday";
      case 4:
        if (lc == "es") return "Viernes";
        return "Friday";
      case 5:
        if (lc == "es") return "Sábado";
        return "Saturday";
      default:
        if (lc == "es") return "Domingo";
        return "Sunday";
    }
  }

  static String getStringCategoryByEnum(ArticleType articleType) {
    switch (articleType) {
      case ArticleType.all:
        return "all";
      case ArticleType.food:
        return "food";
      case ArticleType.electronic:
        return "electronic";
      case ArticleType.money:
        return "money";
      case ArticleType.cloth:
        return "cloth";
      default:
        return "others";
    }
  }

  static getRawDateByDate(BuildContext context, DateTime date) {
    final lc = getLanguage(context);
    if (lc == "es") {
      return "${(DateFormat.yMMMMd('es').format(date))}  ${DateFormat("hh:mm").format(date)}";
    }
    return DateFormat().format(date);
  }

  static String getLanguage(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);
    return myLocale.toLanguageTag();
  }

  ///Esta función crea una url para una petición GET, a partir de una url base y un
  ///diccionario de parámetros.
  static String createGetUrl(
      {required String baseUrl, required Map<String, dynamic> params}) {
    String url = '$baseUrl?${params.keys.first}=${params.values.first}';
    for (int i = 1; i < params.length; i++) {
      url += '&${params.keys.elementAt(i)}=${params.values.elementAt(i)}';
    }
    return url;
  }
}

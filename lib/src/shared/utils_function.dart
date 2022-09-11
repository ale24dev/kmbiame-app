import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
}

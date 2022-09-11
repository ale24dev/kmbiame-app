import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'general_styles.dart';

class Themes {
  static ThemeData get lightTheme => ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.only(top: 10, bottom: 5),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)),
          hoverColor: Colors.grey,
          focusColor: Colors.grey,
          labelStyle: GStyles.headline5.copyWith(
              color: Colors.grey,
              fontSize: 18.sp,
              fontFamily: GStyles.fontOkine),
          errorStyle: TextStyle(color: GStyles.colorSecondary, fontSize: 16.sp),
        ),
        checkboxTheme: GStyles.checkBoxTheme,
        primaryIconTheme: const IconThemeData(color: Colors.red),
        primaryColor: GStyles.colorPrimary,
        primaryColorDark: GStyles.colorPrimary,
        primaryColorLight: GStyles.colorSecondary,
        colorScheme:
            ColorScheme.fromSwatch(accentColor: GStyles.colorSecondary),
        textTheme: TextTheme(
          bodyText1: GStyles.bodyText1,
          headline1: GStyles.headline1,
          headline2: GStyles.headline2,
          headline3: GStyles.headline3,
          headline4: GStyles.headline4,
          headline5: GStyles.headline5,
          subtitle1: GStyles.textBottomNavigationBarItemSelectedStyle,
          subtitle2: GStyles.textBottomNavigationBarItemStyle,
          button: TextStyle(fontSize: 18.sp, color: Colors.purple),
        ),
      );
}

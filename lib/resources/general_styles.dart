import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GStyles {
  ///Colors
  static Color get colorPrimary => const Color(0xff0b486b);
  static Color get colorSecondary => const Color(0xfff3904f).withOpacity(.8);
  static Color get darkBackground => const Color(0xff37474f);

  ///Gradients
  static LinearGradient get fontGradient => LinearGradient(
        //begin: Alignment.topRight,
        //end: Alignment.bottomLeft,
        colors: [colorPrimary, colorSecondary],
      );

  ///Fonts
  static String get fontOkine => 'Okine';
  static String get fontMorganite => 'Morganite';

  ///Text Styles
  static TextStyle get textBottomNavigationBarItemStyle => TextStyle(
        color: Colors.white.withOpacity(0.5),
        fontFamily: fontOkine,
        fontSize: 13.sp,
      );

  static TextStyle get textBottomNavigationBarItemSelectedStyle =>
      textBottomNavigationBarItemStyle.copyWith(color: Colors.white);

  static TextStyle get bodyText1 => TextStyle(
        fontSize: 19.sp,
        fontFamily: fontMorganite,
        color: Colors.black,
      );

  static TextStyle get bodyText2 => TextStyle(
        fontSize: 22.sp,
        fontFamily: fontOkine,
        color: Colors.black,
      );

  static TextStyle get headline1 => TextStyle(
        fontSize: 32.sp,
        fontFamily: fontMorganite,
        //fontWeight: FontWeight.w900,
      );

  static TextStyle get headline2 => headline1.copyWith(
        fontSize: 28.sp,
      );

  static TextStyle get headline3 => headline1.copyWith(
        fontSize: 24.sp,
        fontFamily: fontOkine,
      );

  static TextStyle get headline4 => headline1.copyWith(
        fontSize: 20.sp,
        fontFamily: fontOkine,
      );

  static TextStyle get headline5 => headline1.copyWith(
        fontSize: 16.sp,
        fontFamily: fontOkine,
      );

  static TextStyle get adviceText => TextStyle(
      fontFamily: fontOkine, fontWeight: FontWeight.bold, fontSize: 16.sp);

  ///Themes
  static CheckboxThemeData get checkBoxTheme => CheckboxThemeData(
        fillColor: MaterialStateProperty.all(GStyles.colorSecondary),
      );

  /*static IconTheme get iconTheme => IconTheme(
      data: IconThemeData(color: GStyles.colorPrimary),
      child: SizedBox.shrink());*/
}

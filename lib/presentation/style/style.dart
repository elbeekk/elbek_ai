import 'package:flutter/material.dart';

class CustomStyle {
  CustomStyle._();

  /// colors.
  static const Color primary = Color(0xffFF6D00);

  static const Color primaryDark = Color(0xffFF6D00);

  static Color polylineColor = Colors.grey.shade600;
  static const Color black = Colors.black;
  static Color markerGrey = Colors.grey.shade600;

  static Color shadow = Colors.grey.withOpacity(.1);

  static const Color starColor = Color(0xffFFCC00);

  static const Color storyBorder = Colors.orange;

  static const Color purple = Colors.purple;

  static const Color green = Color(0xff28A164);

  static const Color greenTime = Color(0xff22C55E);

  static const Color greenColor = Colors.green;

  static const Color unselectColor = Color(0xffF4F8F4);

  static const Color svgColorLight = Color(0xff1D272F);

  static const Color svgColorDark = Color(0xffF4F8F4);

  static const Color white = Colors.white;

  static const Color whiteWithOpacity = Color(0x30ffffff);

  static const Color red = Colors.red;

  static const Color success = Colors.lightBlueAccent;

  static const Color icon = Color(0xffF3F4F6);

  static Color textHint = const Color(0xff9CA3AF);

  static const Color transparent = Colors.transparent;

  static const Color bgDark = Color(0xff18191D);

  static const Color bgLight = Color(0xffF3F4F6);

  static const Color chatDateDark = Color(0xff33393F);

  static const Color chatDateLight = Color(0xffFED8CD);

  static const Color bottomBarColorDark = Color(0xff444444);

  static const Color bottomBarColorLight = Color(0xff000000);

  static const Color categoryDark = Color(0xff1D272F);

  static const Color dividerColor = Color(0xffF3F3F3);

  static const Color seeAllColor = Colors.lightBlueAccent;

  static const Color subCategory = Color(0xff9CA3AF);

  static const Color unselectLayout = Color(0xffAEAEAE);

  static const Color unselectTabBar = Color(0xffA0A09C);

  static Color shadowBottomBar = Colors.black.withOpacity(.08);

  static Color shimmerBase = const Color(0xff1D272F);

  ///fonsts.
  static suisseIntlBold({
    double size = 18,
    required Color color,
    FontStyle fontStyle = FontStyle.normal,
    double letterSpacing = -0.4,
  }) =>
      TextStyle(
          fontFamily: 'SuisseIntl',
          fontSize: size,
          fontWeight: FontWeight.bold,
          height: 0,
          color: color,
          fontStyle: fontStyle,
          letterSpacing: letterSpacing,
          decoration: TextDecoration.none);

  static suisseIntlSemi({
    double size = 18,
    required Color color,
    FontStyle fontStyle = FontStyle.normal,
    TextDecoration decoration = TextDecoration.none,
    double letterSpacing = -0.4,
    double height = 0,
  }) =>
      TextStyle(
          fontFamily: 'SuisseIntl',
          fontSize: size,
          fontWeight: FontWeight.w600,
          height: height,
          color: color,
          fontStyle: fontStyle,
          letterSpacing: letterSpacing,
          decoration: decoration);

  static suisseIntlMedium({
    double size = 18,
    required Color color,
    FontStyle fontStyle = FontStyle.normal,
    double height = 0,
    TextDecoration decoration = TextDecoration.none,
    double letterSpacing = -0.02,
  }) =>
      TextStyle(
          fontFamily: 'SuisseIntl',
          fontSize: size,
          fontWeight: FontWeight.w500,
          height: height,
          color: color,
          fontStyle: fontStyle,
          letterSpacing: letterSpacing,
          decoration: decoration);

  static suisseIntlNormal({
    double size = 16,
    required Color color,
    FontStyle fontStyle = FontStyle.normal,
    TextDecoration textDecoration = TextDecoration.none,
    double letterSpacing = -0.4,
  }) =>
      TextStyle(
          fontFamily: 'SuisseIntl',
          fontSize: size,
          fontWeight: FontWeight.normal,
          color: color,
          height: 0,
          fontStyle: fontStyle,
          letterSpacing: letterSpacing,
          decoration: textDecoration);

// static suisseIntlRegular(
//         {double size = 16,
//         FontStyle fontStyle = FontStyle.normal,
//         required Color color,
//         TextDecoration textDecoration = TextDecoration.none,
//         double letterSpacing = 0}) =>
//     TextStyle(
//         fontFamily: 'SuisseIntl',
//         fontSize: size,
//         fontWeight: FontWeight.w400,
//         color: color,
//         fontStyle: fontStyle,
//         letterSpacing: letterSpacing,
//         decoration: textDecoration,);
}

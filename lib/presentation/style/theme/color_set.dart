part of 'theme.dart';

class CustomColorSet {
  final Color primary;

  final Color white;

  final Color textHint;

  final Color textBlack;

  final Color textWhite;

  final Color icon;

  final Color shadow;

  final Color success;

  final Color error;

  final Color transparent;

  final Color backgroundGrey;
  final Color backgroundWhite;

  final Color chatDateColor;

  final Color newBoxColor;

  final Color bottomBarColor;

  final Color svgColor;

  final Color categoryTitleColor;

  CustomColorSet._({
    required this.textHint,
    required this.shadow,
    required this.textBlack,
    required this.textWhite,
    required this.primary,
    required this.white,
    required this.icon,
    required this.success,
    required this.error,
    required this.transparent,
    required this.backgroundGrey,
    required this.backgroundWhite,
    required this.chatDateColor,
    required this.bottomBarColor,
    required this.svgColor,
    required this.categoryTitleColor,
    required this.newBoxColor,
  });

  factory CustomColorSet._create(CustomThemeMode mode) {
    final isLight = mode.isLight;

    final textHint = isLight ? CustomStyle.textHint : CustomStyle.white;

    final textBlack = isLight ? CustomStyle.black : CustomStyle.white;

    final textWhite = isLight ? CustomStyle.white : CustomStyle.black;

    final categoryTitleColor =
        isLight ? CustomStyle.black : CustomStyle.whiteWithOpacity;

    final primary = isLight ? CustomStyle.primary : CustomStyle.primaryDark;

    const white = CustomStyle.white;

    final icon = isLight ? CustomStyle.icon : CustomStyle.whiteWithOpacity;

    final backgroundGrey = isLight ? CustomStyle.bgLight : CustomStyle.bgDark;
    final backgroundWhite = isLight ? CustomStyle.white : CustomStyle.black;

    final newBoxColor =
        isLight ? CustomStyle.subCategory : CustomStyle.categoryDark;

    final svgColor =
        isLight ? CustomStyle.svgColorLight : CustomStyle.svgColorDark;

    const success = CustomStyle.success;

    const error = CustomStyle.red;

    const transparent = CustomStyle.transparent;

    final chatDateColor =
        isLight ? CustomStyle.chatDateLight : CustomStyle.chatDateDark;

    final bottomBarColor = isLight
        ? CustomStyle.bottomBarColorLight.withOpacity(0.8)
        : CustomStyle.bottomBarColorDark;
    final shadow = isLight ? CustomStyle.shadow : CustomStyle.shadow;

    return CustomColorSet._(
      svgColor: svgColor,
      shadow: shadow,
      textHint: textHint,
      textBlack: textBlack,
      textWhite: textWhite,
      primary: primary,
      white: white,
      icon: icon,
      backgroundGrey: backgroundGrey,
      backgroundWhite: backgroundWhite,
      success: success,
      error: error,
      transparent: transparent,
      chatDateColor: chatDateColor,
      bottomBarColor: bottomBarColor,
      categoryTitleColor: categoryTitleColor,
      newBoxColor: newBoxColor,
    );
  }

  static CustomColorSet createOrUpdate(CustomThemeMode mode) {
    return CustomColorSet._create(mode);
  }
}

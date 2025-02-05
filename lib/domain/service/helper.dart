import 'package:flutter/cupertino.dart';

class AppHelper {
  AppHelper._();

  static screenSize(BuildContext context) {
    return WidgetsBinding.instance.platformDispatcher.views.first.display.size /
        MediaQuery.devicePixelRatioOf(context);
  }
}

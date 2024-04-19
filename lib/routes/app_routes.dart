import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/login_1_classic_screen/login_1_classic_screen.dart';

class AppRoutes {
  static const String login1ClassicScreen = '/login_1_classic_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        login1ClassicScreen: Login1ClassicScreen.builder,
        initialRoute: Login1ClassicScreen.builder
      };
}

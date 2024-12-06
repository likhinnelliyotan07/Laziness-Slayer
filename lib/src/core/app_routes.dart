import 'package:flutter/material.dart';
import 'package:laziness_slayer/src/presentations/splash_screen/splash_screen.dart';

import '../presentations/auth/screens/login/login_screen.dart';

const String initialRoute = SplashScreen.routeName;

String rootName = initialRoute;
String currentRouteName = initialRoute;

Route<dynamic> generateRoute(RouteSettings settings) {
  final arguments = settings.arguments;
  currentRouteName = settings.name ?? '';
  Map<String, dynamic> arg =
      arguments != null ? arguments as Map<String, dynamic> : {};
  switch (settings.name) {
    case SplashScreen.routeName:
      return materialPageRoute(const SplashScreen());
    case LoginScreen.routeName:
      return materialPageRoute(LoginScreen());
    default:
      return materialPageRoute(
        Scaffold(
          body: Center(
            child: Text(
              'No route defined for ${settings.name}',
            ),
          ),
        ),
      );
  }
}

MaterialPageRoute<dynamic> materialPageRoute(Widget route) =>
    MaterialPageRoute(builder: (_) => route);

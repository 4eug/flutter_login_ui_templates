import 'package:flutter/material.dart';
import 'package:flutter_login_template_ui/home.dart';
import 'package:flutter_login_template_ui/routes/routes.dart';
import 'package:flutter_login_template_ui/screens/test.dart';
import 'package:flutter_login_template_ui/screens/welcome_screen.dart';
import 'package:page_transition/page_transition.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  // ignore: unused_local_variable
  final Map<String, dynamic> arguments = settings.arguments;
  switch (settings.name) {
    case welcomeScreenRoute:
      return PageTransition(
        child: WelcomeScreen(),
        type: PageTransitionType.fade,
      );

    case homeScreenRoute:
      return PageTransition(
        child: HomeScreen(),
        type: PageTransitionType.fade,
      );

    case testScreenRoute:
      return PageTransition(
        child: TestScreen(),
        type: PageTransitionType.fade,
      );

    default:
      return PageTransition(
        child: WelcomeScreen(),
        type: PageTransitionType.fade,
      );
  }
}

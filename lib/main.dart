import 'package:flutter/material.dart';
import 'package:flutter_login_template_ui/routes/router.dart';
import 'package:flutter_login_template_ui/routes/routes.dart';
import 'package:flutter_login_template_ui/utils/config.dart';
import 'package:flutter_login_template_ui/utils/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // app name
      title: AppConfig.appName,

      // app theme
      theme: AppTheme.lightTheme,

      // disable test banner
      debugShowCheckedModeBanner: false,

      //make flutter aware of app routes using router generator in router.dart file
      onGenerateRoute: generateRoute,

      initialRoute: welcomeScreenRoute,
    );
  }
}

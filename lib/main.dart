import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_template_ui/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      title: 'Login Screens',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      // initialRoute: welcomeScrenRoute,
      home: WelcomeScreen(),
    );
  }
}

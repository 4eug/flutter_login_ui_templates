import 'package:flutter/material.dart';
import 'package:flutter_login_template_ui/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Screens',
      debugShowCheckedModeBanner: false,
      initialRoute: welcomeScrenRoute,
    );
  }
}

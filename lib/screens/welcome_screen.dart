import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_login_template_ui/utils/config.dart';
import 'package:flutter_login_template_ui/utils/constants.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
 void initState() { 
   super.initState();
    loadContext();
 }
 
  loadContext() async {
    Timer(Duration(seconds: 5), (){
      Navigator.of(context).pushNamedAndRemoveUntil(
        , (route) => false);
    });
  }


  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: SizeConfig.blockSizeVertical * 100,
            child: Image.asset(
              AvailableImages.background["assetPath"],
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
              child: Container(
            padding: EdgeInsets.only(),
            child: Image.asset(
              AvailableImages.personalLogo["assetPath"],
              height: SizeConfig.blockSizeVertical * 5,
              width: SizeConfig.blockSizeHorizontal * 15,
              fit: BoxFit.fill,
            ),
          ))
        ],
      ),
    );
  }
}

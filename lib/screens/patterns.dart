import 'package:flutter/material.dart';
import 'package:flutter_login_template_ui/utils/config.dart';
import 'package:flutter_login_template_ui/widgets/constants.dart';

class PatternsLogin extends StatefulWidget {
  PatternsLogin({Key key}) : super(key: key);

  @override
  _PatternsLoginState createState() => _PatternsLoginState();
}

class _PatternsLoginState extends State<PatternsLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: Column(children: [
          Padding(padding: EdgeInsets.only()),
          Positioned(
            top: SizeConfig.blockSizeVertical * 10,
            left: SizeConfig.blockSizeHorizontal * 4,
            child: Image.asset(
              UIGuide.patternimg,
              fit: BoxFit.fitHeight,
            ),
          ),
          Expanded(
              child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(60))),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    SizedBox(height: 60),
                  ],
                ),
              ),
            ),
          ))
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_login_template_ui/utils/config.dart';
import 'package:flutter_login_template_ui/widgets/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class LinkLogin extends StatefulWidget {
  LinkLogin({Key key}) : super(key: key);

  @override
  _LinkLoginState createState() => _LinkLoginState();
}

class _LinkLoginState extends State<LinkLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
              color: Colors.white,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only()),
                  Center(
                    child: Image.asset(
                      UIGuide.link_head,
                    ),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical * 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Intelligent Creative Partner,",
                        style: GoogleFonts.roboto(
                          fontSize: 25,
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical * 0.5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Welcome!",
                        style: GoogleFonts.roboto(
                          fontSize: 25,
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical * 3),
                  _linkimage(),
                  _inputField1(),
                  _inputField2(),
                  SizedBox(height: SizeConfig.blockSizeVertical * 1.5),
                  _loginbtn(context)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _linkimage() {
  return Column(
    children: [
      Padding(padding: EdgeInsets.only()),
      Center(
        child: Image.asset(
          UIGuide.link_image,
        ),
      )
    ],
  );
}

Widget _inputField1() {
  return Column(
    children: [
      SizedBox(height: 20),
      Padding(
        padding: EdgeInsets.all(8),
        child: TextField(
          decoration: InputDecoration(
              labelText: 'Username',
              hintText: 'enter your name',
              isCollapsed: false,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
              )),
        ),
      )
    ],
  );
}

Widget _inputField2() {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.all(8),
        child: TextField(
          decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'enter your password',
              isCollapsed: false,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
              )),
        ),
      )
    ],
  );
}

Widget _loginbtn(context) {
  return Container(
    width: double.infinity,
    // ignore: deprecated_member_use
    child: RaisedButton(
      onPressed: () => {},
      padding: EdgeInsets.symmetric(vertical: 20),
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(30.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "LOGIN",
            style: GoogleFonts.roboto(
                fontSize: 23,
                color: Colors.white,
                letterSpacing: 0.168,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
      color: Colors.blue,
    ),
  );
}

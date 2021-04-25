import 'package:flutter/material.dart';
import 'package:flutter_login_template_ui/utils/config.dart';
import 'package:flutter_login_template_ui/widgets/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LightHouseLogin extends StatefulWidget {
  LightHouseLogin({Key key}) : super(key: key);

  @override
  _LightHouseLoginState createState() => _LightHouseLoginState();
}

class _LightHouseLoginState extends State<LightHouseLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 60),
              color: Color(0xFFfafafa),
              width: double.infinity,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only()),
                  Center(
                    child: Image.asset(
                      UIGuide.lighthouse_image,
                      height: SizeConfig.blockSizeVertical * 30,
                      width: SizeConfig.blockSizeHorizontal * 90,
                    ),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical * 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Flutter Login Template",
                        style: GoogleFonts.roboto(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical * 1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Login Ui easy to use",
                        style: GoogleFonts.roboto(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical * 0.5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "for your next mobile project.",
                        style: GoogleFonts.roboto(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical * 5),
                  _googlelogin(context),
                  SizedBox(height: SizeConfig.blockSizeVertical * 3),
                  _fblogin(context),
                  SizedBox(height: SizeConfig.blockSizeVertical * 3),
                  _emaillogin(context),
                  SizedBox(height: SizeConfig.blockSizeVertical * 7),
                  _already()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _googlelogin(context) {
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
          FaIcon(
            FontAwesomeIcons.googlePlusG,
            color: Colors.white,
          ),
          Text(
            "Continue With Google +",
            style: GoogleFonts.roboto(
                fontSize: 23,
                color: Colors.white,
                letterSpacing: 0.168,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
      color: Colors.red,
    ),
  );
}

Widget _fblogin(context) {
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
          FaIcon(
            FontAwesomeIcons.facebookF,
            color: Colors.white,
          ),
          Text(
            "Continue With Facebook",
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

Widget _emaillogin(context) {
  return Container(
    width: double.infinity,
    // ignore: deprecated_member_use
    child: RaisedButton(
      onPressed: () => {},
      padding: EdgeInsets.symmetric(vertical: 20),
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(30.0),
      ),
      child: Text(
        "Continue With Email address",
        style: GoogleFonts.roboto(
            fontSize: 23,
            color: Colors.white,
            letterSpacing: 0.168,
            fontWeight: FontWeight.w500),
      ),
      color: Colors.black,
    ),
  );
}

Widget _already() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "Already have an account? ",
        style: GoogleFonts.roboto(fontSize: 18),
      ),
      InkWell(
        child: Text(
          "Sign In",
          style: GoogleFonts.roboto(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline),
        ),
        onTap: () {},
      )
    ],
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_login_template_ui/utils/config.dart';
import 'package:flutter_login_template_ui/widgets/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class BlackWhiteLogin extends StatefulWidget {
  BlackWhiteLogin({Key key}) : super(key: key);

  @override
  _BlackWhiteLoginState createState() => _BlackWhiteLoginState();
}

class _BlackWhiteLoginState extends State<BlackWhiteLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 120),
            color: Color(0xFFfafafa),
            width: double.infinity,
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only()),
                Center(
                  child: Image.asset(
                    UIGuide.logo,
                    height: SizeConfig.blockSizeVertical * 12,
                    width: SizeConfig.blockSizeHorizontal * 100,
                  ),
                ),
                SizedBox(height: SizeConfig.blockSizeVertical * 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "LOGIN",
                      style: GoogleFonts.roboto(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                SizedBox(height: SizeConfig.blockSizeVertical * 3),
                _inputField1(context),
                SizedBox(height: SizeConfig.blockSizeVertical * 1.5),
                _inputField2(context),
                SizedBox(height: SizeConfig.blockSizeVertical * 3),
                _loginBtn(context),
                SizedBox(height: SizeConfig.blockSizeVertical * 1.5),
                _signUp()
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

Widget _loginBtn(context) {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.black,
    ),
    // ignore: deprecated_member_use
    child: RaisedButton(
      onPressed: () => {},
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Text(
        "LOG IN",
        style: GoogleFonts.roboto(
            fontSize: 20,
            color: Colors.white,
            letterSpacing: 0.168,
            fontWeight: FontWeight.w500),
      ),
      color: Colors.black,
    ),
  );
}

Widget _inputField1(context) {
  return TextField(
      style: GoogleFonts.roboto(
          fontSize: 20,
          color: Colors.black,
          letterSpacing: 0.24,
          fontWeight: FontWeight.w500),
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        hintText: "USERNAME",
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(1),
          ),
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(1),
          ),
          borderSide: BorderSide(color: Colors.black),
        ),
      ));
}

Widget _inputField2(context) {
  return TextField(
      style: GoogleFonts.roboto(
          fontSize: 20,
          color: Colors.black,
          letterSpacing: 0.24,
          fontWeight: FontWeight.w500),
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        hintText: "PASSWORD",
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(1),
          ),
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(1),
          ),
          borderSide: BorderSide(color: Colors.black),
        ),
      ));
}

Widget _signUp() {
  return InkWell(
    onTap: () {},
    child: Text(
      "SIGN UP",
      style: GoogleFonts.roboto(
          fontSize: 20,
          color: Colors.black,
          letterSpacing: 0.168,
          fontWeight: FontWeight.w500),
    ),
  );
}

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
                _inputField2(context),
                _loginBtn(context)
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
    margin: EdgeInsets.only(top: 20, bottom: 50),
    decoration: BoxDecoration(
      color: Colors.black,
    ),
    // ignore: deprecated_member_use
    child: RaisedButton(
      onPressed: () => {},
      padding: EdgeInsets.symmetric(vertical: 25),
      child: Text(
        "Log In",
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
  return Container(
    decoration: BoxDecoration(color: Colors.black),
    margin: EdgeInsets.only(bottom: 20),
    child: TextField(
      style: GoogleFonts.roboto(
          fontSize: 20,
          color: Colors.grey,
          letterSpacing: 0.24,
          fontWeight: FontWeight.w200),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 25),
        hintStyle: TextStyle(
          color: Colors.black,
        ),
        fillColor: Colors.white,
        filled: true,
        prefixIconConstraints: BoxConstraints(
          minWidth: 75,
        ),
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
      ),
    ),
  );
}

Widget _inputField2(context) {
  return Container(
    decoration: BoxDecoration(color: Colors.black),
    margin: EdgeInsets.only(bottom: 20),
    child: TextField(
      style: GoogleFonts.roboto(
          fontSize: 20,
          color: Colors.grey,
          letterSpacing: 0.24,
          fontWeight: FontWeight.w200),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 25),
        hintStyle: TextStyle(
          color: Colors.black,
        ),
        fillColor: Colors.white,
        filled: true,
        prefixIconConstraints: BoxConstraints(
          minWidth: 75,
        ),
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
      ),
    ),
  );
}

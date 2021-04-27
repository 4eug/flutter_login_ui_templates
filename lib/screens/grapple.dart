import 'package:flutter/material.dart';
import 'package:flutter_login_template_ui/utils/config.dart';
import 'package:google_fonts/google_fonts.dart';

class GrappleLogin extends StatefulWidget {
  GrappleLogin({Key key}) : super(key: key);

  @override
  _GrappleLoginState createState() => _GrappleLoginState();
}

class _GrappleLoginState extends State<GrappleLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 110, horizontal: 30),
              color: Colors.white,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Grapple",
                        style: GoogleFonts.poppins(
                          fontSize: 40,
                          color: Color(0xff205072),
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical * 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Enter your login details to ",
                        style: GoogleFonts.montserrat(
                          fontSize: 25,
                          color: Colors.greenAccent,
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
                        "access your account ",
                        style: GoogleFonts.roboto(
                          fontSize: 25,
                          color: Colors.greenAccent,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical * 10),
                  _inputField1(),
                  SizedBox(height: SizeConfig.blockSizeVertical * 3),
                  _inputField2(),
                  SizedBox(height: SizeConfig.blockSizeVertical * 3),
                  _loginbtn(context),
                  SizedBox(height: SizeConfig.blockSizeVertical * 10),
                  _passCode()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _inputField1() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(50),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black,
          blurRadius: 25,
          offset: Offset(0, 5),
          spreadRadius: -25,
        ),
      ],
    ),
    margin: EdgeInsets.only(bottom: 20),
    child: TextField(
      style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 20,
        color: Colors.grey,
        letterSpacing: 0.24,
        fontWeight: FontWeight.w200,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 25),
        hintStyle: TextStyle(
          color: Color(0xffA6B0BD),
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
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(1),
          ),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    ),
  );
}

Widget _inputField2() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(50),
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black,
          blurRadius: 25,
          offset: Offset(0, 5),
          spreadRadius: -25,
        ),
      ],
    ),
    margin: EdgeInsets.only(bottom: 20),
    child: TextField(
      style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 20,
        color: Colors.grey,
        letterSpacing: 0.24,
        fontWeight: FontWeight.w200,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 25),
        hintStyle: TextStyle(
          color: Color(0xffA6B0BD),
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
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(1),
          ),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    ),
  );
}

Widget _loginbtn(context) {
  // ignore: deprecated_member_use
  return FlatButton(
    onPressed: () => {},
    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 140),
    shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(20.0),
    ),
    child: Text(
      "LOG IN",
      style: GoogleFonts.montserrat(
          fontSize: 23,
          color: Colors.white,
          letterSpacing: 0.168,
          fontWeight: FontWeight.w500),
    ),
    color: Colors.greenAccent,
  );
}

Widget _passCode() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "i didn/t receive the code ",
        style: GoogleFonts.montserrat(fontSize: 20, color: Colors.greenAccent),
      ),
      InkWell(
        child: Text(
          "Resend",
          style: GoogleFonts.roboto(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: () {},
      )
    ],
  );
}

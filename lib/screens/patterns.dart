import 'package:flutter/material.dart';
import 'package:flutter_login_template_ui/utils/config.dart';
import 'package:flutter_login_template_ui/widgets/constants.dart';

import 'package:google_fonts/google_fonts.dart';

class PatternsLogin extends StatefulWidget {
  @override
  _PatternsLoginState createState() => _PatternsLoginState();
}

class _PatternsLoginState extends State<PatternsLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[_topBar, _bottomBar],
        ),
      ),
    );
  }

  Widget get _topBar => Container(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only()),
            Positioned(
              top: SizeConfig.blockSizeVertical * 10,
              left: SizeConfig.blockSizeHorizontal * 10,
              child: Image.asset(
                UIGuide.patternimg,
                fit: BoxFit.fitHeight,
              ),
            ),
          ],
        ),
      );

  Widget get _bottomBar => Expanded(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(60))),
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Text("Login",
                        style: GoogleFonts.poppins(
                          fontSize: 30,
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                  SizedBox(height: 20),
                  _inputField1(),
                  _inputField2(),
                  SizedBox(height: 20),
                  _loginbtn(context),
                ],
              ),
            ),
          ),
        ),
      );

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
        style: GoogleFonts.poppins(
            fontSize: 20,
            color: Colors.black,
            letterSpacing: 0.24,
            fontWeight: FontWeight.w500),
        decoration: InputDecoration(
          hintText: "Email address",
          hintStyle: TextStyle(
            color: Color(0xffA6B0BD),
          ),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
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
        style: GoogleFonts.poppins(
            fontSize: 20,
            color: Colors.black,
            letterSpacing: 0.24,
            fontWeight: FontWeight.w500),
        decoration: InputDecoration(
          hintText: "Password",
          hintStyle: TextStyle(
            color: Color(0xffA6B0BD),
          ),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
        obscureText: true,
      ),
    );
  }

  Widget _loginbtn(context) {
    // ignore: deprecated_member_use
    return Center(
      // ignore: deprecated_member_use
      child: FlatButton(
        onPressed: () => {},
        padding: EdgeInsets.symmetric(vertical: 18, horizontal: 130),
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
        color: Colors.yellowAccent,
      ),
    );
  }
}

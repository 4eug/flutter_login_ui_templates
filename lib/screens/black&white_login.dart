import 'package:flutter/material.dart';
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
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 100),
          color: Color(0xFFfafafa),
          width: double.infinity,
          child: Column(
            children: [
              _inputField(context),
              _inputField(context),
              _loginBtn(context)
            ],
          ),
        ),
      ),
    );
  }
}

Widget _loginBtn(context) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.only(top: 20, bottom: 50),
    decoration: BoxDecoration(
      color: Color(0xff19327d),
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
      color: Color(0xff19327d),
    ),
  );
}

Widget _inputField(context) {
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

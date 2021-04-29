import 'package:flutter/material.dart';
import 'package:flutter_login_template_ui/utils/config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                  SizedBox(height: SizeConfig.blockSizeVertical * 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Sign In",
                        style: GoogleFonts.poppins(
                          fontSize: 30,
                          color: Color(0xff07446C),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical * 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet, consetetur",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Color(0xff07446C),
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
                        "sadipscing elitr, sed diam nonumy eirmod  ",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Color(0xff07446C),
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
                        "tempor invidunt ut labore et dolore",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Color(0xff07446C),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            _emailFiled(),
          ],
        ),
      ),
    );
  }
}

Widget _emailFiled() {
  return Container(
    margin: EdgeInsets.all(40),
    padding: EdgeInsets.only(top: 275, left: 5, right: 5),
    child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.email,
              color: Color(0xff85B634),
              size: 20,
            ),
            focusColor: Color(0xff757575),
            hintText: "Email Address",
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey))),
        keyboardType: TextInputType.emailAddress,
      ),
      SizedBox(height: 30),
      TextField(
        decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                FontAwesomeIcons.eyeSlash,
                color: Color(0xff85B634),
                size: 20,
              ),
            ),
            hintText: "Password",
            fillColor: Color(0xff757575),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey))),
        obscureText: true,
      ),
      SizedBox(height: 30),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Forgot Password?",
            style: GoogleFonts.roboto(
                fontSize: 20,
                color: Color(0xff757575),
                fontWeight: FontWeight.w300),
          ),
        ],
      ),
      SizedBox(height: 70),
      _signinbtn(),
      SizedBox(height: 120),
      _signup(),
    ]),
  );
}

Widget _signup() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "Don\'t have an account?",
        style: GoogleFonts.poppins(fontSize: 20, color: Color(0xff757575)),
      ),
      InkWell(
        child: Text(
          "Sign Up",
          style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xff07446C)),
        ),
        onTap: () {},
      )
    ],
  );
}

Widget _signinbtn() {
  // ignore: deprecated_member_use
  return FlatButton(
    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
    onPressed: () => {},
    shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0),
    ),
    child: Text(
      "Sign In",
      style: GoogleFonts.montserrat(
          fontSize: 23,
          color: Colors.white,
          letterSpacing: 0.168,
          fontWeight: FontWeight.w500),
    ),
    color: Color(0xff07446C),
  );
}

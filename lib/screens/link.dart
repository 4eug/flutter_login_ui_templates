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
        physics: NeverScrollableScrollPhysics(),
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
                  _loginbtn(context),
                  SizedBox(height: SizeConfig.blockSizeVertical * 1),
                  _forgotPass(),
                  SizedBox(height: SizeConfig.blockSizeVertical * 1),
                  _switchbtn(context)
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
  // ignore: deprecated_member_use
  return FlatButton(
    onPressed: () => {},
    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 140),
    shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(15.0),
    ),
    child: Text(
      "LOGIN",
      style: GoogleFonts.roboto(
          fontSize: 23,
          color: Colors.white,
          letterSpacing: 0.168,
          fontWeight: FontWeight.w500),
    ),
    color: Colors.blue,
  );
}

Widget _forgotPass() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          "Forgot Password? ",
          style: GoogleFonts.roboto(
              fontSize: 15, color: Colors.blue, fontWeight: FontWeight.w500),
        ),
      ),
    ],
  );
}

Widget _switchbtn(context) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(width: 0.5),
        borderRadius: BorderRadius.all(Radius.circular(15))),
    // ignore: deprecated_member_use
    child: FlatButton(
      onPressed: () => {},
      padding: EdgeInsets.symmetric(vertical: 18, horizontal: 85),
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(15.0),
      ),
      child: Text(
        "SWITCH ACCOUNT",
        style: GoogleFonts.roboto(
            fontSize: 23,
            color: Colors.black,
            letterSpacing: 0.168,
            fontWeight: FontWeight.w500),
      ),
      color: Colors.white,
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_login_template_ui/utils/config.dart';
import 'package:flutter_login_template_ui/widgets/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PirpleLogin extends StatefulWidget {
  PirpleLogin({Key key}) : super(key: key);

  @override
  _PirpleLoginState createState() => _PirpleLoginState();
}

class _PirpleLoginState extends State<PirpleLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Stack(
          children: [
            Container(
              color: Colors.black,
              width: double.infinity,
              child: Opacity(
                opacity: .4,
                child: Image.asset(
                  UIGuide.pirple_img,
                  height: SizeConfig.blockSizeVertical * 100,
                  width: SizeConfig.blockSizeHorizontal * 100,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Positioned(
              top: SizeConfig.blockSizeVertical * 2,
              left: SizeConfig.blockSizeHorizontal * 4,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 40, horizontal: 28),
                child: Image.asset(
                  UIGuide.logo,
                  height: SizeConfig.blockSizeVertical * 9.5,
                  width: SizeConfig.blockSizeHorizontal * 19,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 75, horizontal: 120)),
                Text(
                  "Pirple Login UI",
                  style: GoogleFonts.montserrat(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(),
              ],
            ),
            Positioned(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 200, 150, 100),
                child: tabs(),
              ),
            ),
            _emailFiled(),
          ],
        ),
      ),
    );
  }
}

Widget tabs() {
  return DefaultTabController(
    length: 2,
    child: TabBar(
      tabs: [
        Tab(
          child: Text(
            "Sign in",
            style: GoogleFonts.montserrat(fontSize: 20),
          ),
        ),
        Tab(
          child: Text(
            "Sign up",
            style: GoogleFonts.montserrat(
              fontSize: 20,
            ),
          ),
        ),
      ],
      labelColor: Colors.blue,
      unselectedLabelColor: Colors.grey,
    ),
  );
}

Widget _emailFiled() {
  return Container(
    margin: EdgeInsets.all(40),
    padding: EdgeInsets.only(top: 235, left: 5, right: 5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextField(
          decoration: InputDecoration(
              focusColor: Colors.white,
              hintText: "Email address",
              hintStyle: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w300, color: Colors.white),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey))),
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(height: 30),
        TextField(
          decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: Colors.grey,
              ),
              hintText: "Enter Password",
              fillColor: Colors.white,
              hintStyle: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w300, color: Colors.white),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey))),
          obscureText: true,
        ),
        SizedBox(height: 30),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // ignore: deprecated_member_use
              FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 18, horizontal: 130),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    "SIGN IN",
                    style: GoogleFonts.montserrat(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  color: Colors.blueGrey.withOpacity(0.9))
            ],
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipOval(
                child: Material(
              color: Colors.blue,
              child: InkWell(
                child: Icon(
                  Icons.done,
                  color: Colors.white,
                  size: 20,
                ),
                onTap: () {},
              ),
            )),
            SizedBox(width: 6),
            Text(
              "Remember me",
              style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Sign in with",
              style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        SizedBox(height: 30),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: 50,
                height: 50,
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {},
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  child: FaIcon(
                    FontAwesomeIcons.facebookF,
                    color: Colors.white,
                  ),
                  color: Colors.blueGrey.withOpacity(0.9),
                )),
            SizedBox(width: 10),
            Container(
                width: 50,
                height: 50,
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {},
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  child: FaIcon(
                    FontAwesomeIcons.twitter,
                    color: Colors.white,
                  ),
                  color: Colors.blueGrey.withOpacity(0.9),
                )),
            SizedBox(width: 10),
            Container(
                width: 50,
                height: 50,
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {},
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  child: FaIcon(
                    FontAwesomeIcons.googlePlusG,
                    color: Colors.white,
                  ),
                  color: Colors.blueGrey.withOpacity(0.9),
                )),
          ],
        ),
        SizedBox(height: 40),
        _forgotPass()
      ],
    ),
  );
}

Widget _forgotPass() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Forgot Password? ",
        style: GoogleFonts.roboto(
            fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
      ),
    ],
  );
}

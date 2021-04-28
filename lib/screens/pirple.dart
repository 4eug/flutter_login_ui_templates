import 'package:flutter/material.dart';
import 'package:flutter_login_template_ui/utils/config.dart';
import 'package:flutter_login_template_ui/widgets/constants.dart';
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
                opacity: .5,
                child: Image.asset(
                  UIGuide.pirple_img,
                  height: SizeConfig.blockSizeVertical * 100,
                  width: SizeConfig.blockSizeHorizontal * 100,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 40, horizontal: 120)),
                Text(
                  "Pirple Login UI",
                  style: GoogleFonts.montserrat(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget tabs() {
  return DefaultTabController(
    length: 2,
    child: TabBar(tabs: [Tab(text: "Sign in"), Tab(text: "Sign up")]),
  );
}

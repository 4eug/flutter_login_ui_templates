import 'package:flutter/material.dart';

import 'package:flutter_login_template_ui/utils/config.dart';
import 'package:flutter_login_template_ui/widgets/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    // loadContext();
  }

  // loadContext() async {
  //   Timer(Duration(seconds: 5), () {
  //     Navigator.of(context)
  //         .pushNamedAndRemoveUntil(homeScreenRoute, (route) => false);
  //   });
  // }

  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.black,
            height: SizeConfig.blockSizeVertical * 100,
            child: Opacity(
              opacity: 0.6,
              child: Image.asset(
                UIGuide.background,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.blockSizeVertical * 2,
            left: SizeConfig.blockSizeHorizontal * 4,
            child: Container(
              padding: EdgeInsets.only(
                  top: SizeConfig.blockSizeVertical * 20,
                  left: SizeConfig.blockSizeHorizontal * 28),
              child: Image.asset(
                UIGuide.logo,
                height: SizeConfig.blockSizeVertical * 20,
                width: SizeConfig.blockSizeHorizontal * 40,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.blockSizeVertical * 50,
            left: SizeConfig.blockSizeHorizontal * 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Login Ui Templates",
                  style: GoogleFonts.montserrat(
                      fontSize: 40.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 10),
                Text(
                  "With Flutter",
                  style: GoogleFonts.montserrat(
                      fontSize: 40.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

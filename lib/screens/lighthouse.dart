import 'package:flutter/material.dart';
import 'package:flutter_login_template_ui/utils/config.dart';
import 'package:flutter_login_template_ui/widgets/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class LightHouseLogin extends StatefulWidget {
  LightHouseLogin({Key key}) : super(key: key);

  @override
  _LightHouseLoginState createState() => _LightHouseLoginState();
}

class _LightHouseLoginState extends State<LightHouseLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 120),
              color: Color(0xFFfafafa),
              width: double.infinity,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only()),
                  Center(
                    child: Image.asset(
                      UIGuide.lighthouse_image,
                    ),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical * 3),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Flutter Login Template",
                        style: GoogleFonts.roboto(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

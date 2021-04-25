import 'package:flutter/material.dart';

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
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
              color: Colors.white,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
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

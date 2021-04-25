import 'package:flutter/material.dart';
import 'package:flutter_login_template_ui/widgets/constants.dart';

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
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 60, horizontal: 30),
              color: Colors.white,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only()),
                  Center(
                    child: Image.asset(
                      UIGuide.link_head,
                    ),
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

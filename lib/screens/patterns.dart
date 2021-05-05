import 'package:flutter/material.dart';
import 'package:flutter_login_template_ui/utils/config.dart';
import 'package:flutter_login_template_ui/widgets/constants.dart';

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
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60), topRight: Radius.circular(60))),
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    "Hello",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                  ),
                  new Text("Create an account to continue"),
                  _textField(context),
                  _textField(context),
                  _loginButton,
                ],
              ),
            ),
          ),
        ),
      );

  Widget _textField(context) => Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
        child: TextField(
          style: TextStyle(color: Colors.grey),
          textAlign: TextAlign.left,
          obscureText: true,
          autocorrect: false,
          cursorColor: Colors.grey,
          maxLines: 1,
          decoration: InputDecoration(
            border: new UnderlineInputBorder(
                borderSide: new BorderSide(color: Colors.grey)),
            hintText: 'Email',
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ),
      );

  Widget get _loginButton => Center(
        child: Padding(
            padding: EdgeInsets.only(top: 70),
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red,
                      blurRadius:
                          10.0, // has the effect of softening the shadow
                      spreadRadius:
                          1.0, // has the effect of extending the shadow
                      offset: Offset(
                        0.0, // horizontal, move right 10
                        5.0, // vertical, move down 10
                      ),
                    ),
                  ],
                ),
                // ignore: deprecated_member_use
                child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(50.0)),
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 20, color: Colors.green),
                  ),
                ),
              ),
            )),
      );
}

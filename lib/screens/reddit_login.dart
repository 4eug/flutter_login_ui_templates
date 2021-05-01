import 'package:flutter/material.dart';
import 'package:flutter_login_template_ui/utils/config.dart';
import 'package:flutter_login_template_ui/widgets/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class RedditLogin extends StatefulWidget {
  @override
  _RedditLoginState createState() => _RedditLoginState();
}

class _RedditLoginState extends State<RedditLogin> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(UIGuide.backgroundvid)
      ..initialize().then((_) {
        _controller.play();
        _controller.setLooping(true);

        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            SizedBox.expand(
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: SizedBox(
                  width: _controller.value.size?.width ?? 0,
                  height: _controller.value.size?.height ?? 0,
                  child: VideoPlayer(_controller),
                ),
              ),
            ),
            _skip(),
            SizedBox(),
            _logo(),
            SizedBox(
              height: 50,
            ),
            Positioned(
                top: SizeConfig.blockSizeVertical * 55,
                left: SizeConfig.blockSizeHorizontal * 14,
                child: Container(child: tabWidget()))
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

Widget tabWidget() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "Dive into",
            style: GoogleFonts.poppins(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 30,
            child: DefaultTextStyle(
              style: GoogleFonts.montserrat(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText('anything'),
                  TyperAnimatedText('r/Code'),
                  TyperAnimatedText('r/Flutter'),
                  TyperAnimatedText('r/Login Ui\'s'),
                  TyperAnimatedText('reddit')
                ],
                repeatForever: true,
                pause: const Duration(milliseconds: 900),
                stopPauseOnTap: true,
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 10),
      Container(
        width: 300,
        height: 50,
        // ignore: deprecated_member_use
        child: RaisedButton(
          onPressed: () => {},
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                UIGuide.google,
                height: SizeConfig.blockSizeVertical * 2.5,
                width: SizeConfig.blockSizeHorizontal * 5,
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "Sign up with Google",
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Colors.white,
                      letterSpacing: 0.168,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          color: Colors.black.withOpacity(0.5),
        ),
      ),
      SizedBox(height: 30),
      Container(
        width: 300,
        height: 50,
        // ignore: deprecated_member_use
        child: RaisedButton(
          onPressed: () => {},
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              FaIcon(
                FontAwesomeIcons.apple,
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  "Sign up with Apple",
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Colors.white,
                      letterSpacing: 0.168,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          color: Colors.black.withOpacity(0.5),
        ),
      ),
      SizedBox(height: 20),
      Container(
        width: 300,
        height: 50,
        // ignore: deprecated_member_use
        child: RaisedButton(
          onPressed: () => {},
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              FaIcon(
                Icons.email,
                color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  "Sign up with email",
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Colors.white,
                      letterSpacing: 0.168,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          color: Colors.black.withOpacity(0.5),
        ),
      ),
      SizedBox(height: 15),
      _already()
    ],
  );
}

Widget _already() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "Already a Redditor? ",
        style: GoogleFonts.poppins(fontSize: 12, color: Colors.white),
      ),
      InkWell(
        child: Text(
          "Sign In",
          style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              color: Colors.white),
        ),
        onTap: () {},
      )
    ],
  );
}

Widget _logo() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
    child: Column(
      children: [
        Padding(padding: EdgeInsets.only()),
        Center(
          child: Image.asset(
            UIGuide.reddit_logo,
            height: SizeConfig.blockSizeVertical * 12,
            width: SizeConfig.blockSizeHorizontal * 100,
          ),
        ),
      ],
    ),
  );
}

Widget _skip() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          child: Text(
            "Skip",
            style: GoogleFonts.poppins(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),
          ),
          onTap: () {},
        )
      ],
    ),
  );
}

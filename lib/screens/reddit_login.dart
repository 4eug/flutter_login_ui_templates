import 'package:flutter/material.dart';
import 'package:flutter_login_template_ui/utils/config.dart';
import 'package:flutter_login_template_ui/widgets/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

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
                fit: BoxFit.cover,
                child: SizedBox(
                  width: _controller.value.size?.width ?? 0,
                  height: _controller.value.size?.height ?? 0,
                  child: VideoPlayer(_controller),
                ),
              ),
            ),
            _logo(),
            SizedBox(
              height: 50,
            ),
            Positioned(
                top: SizeConfig.blockSizeVertical * 65,
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
            mainAxisSize: MainAxisSize.max,
            children: [
              FaIcon(
                FontAwesomeIcons.facebookF,
                color: Colors.white,
              ),
              Text(
                "Continue With Facebook",
                style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: Colors.white,
                    letterSpacing: 0.168,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          color: Colors.black,
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
          color: Colors.black,
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
          color: Colors.black,
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
        "Already have an account? ",
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
            UIGuide.logo,
            height: SizeConfig.blockSizeVertical * 12,
            width: SizeConfig.blockSizeHorizontal * 100,
          ),
        ),
      ],
    ),
  );
}

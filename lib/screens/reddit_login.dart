import 'package:flutter/material.dart';
import 'package:flutter_login_template_ui/widgets/constants.dart';
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
            TabWidget()
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

class TabWidget extends StatelessWidget {
  const TabWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(16),
          width: 300,
          height: 250,
          color: Colors.white.withAlpha(400),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    hintText: 'Username',
                    hintStyle: TextStyle(fontWeight: FontWeight.bold)),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  // ignore: deprecated_member_use
                  RaisedButton(
                    child: Text('Sign-In'),
                    onPressed: () {},
                  ),

                  SizedBox(
                    width: 20,
                  ),
                  // ignore: deprecated_member_use
                  RaisedButton(
                    child: Text('Sign-Up'),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

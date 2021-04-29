import 'package:flutter/cupertino.dart';
import 'package:flutter_login_template_ui/screens/black&white_login.dart';
import 'package:flutter_login_template_ui/screens/grapple.dart';
import 'package:flutter_login_template_ui/screens/lighthouse.dart';
import 'package:flutter_login_template_ui/screens/link.dart';
import 'package:flutter_login_template_ui/screens/login.dart';
import 'package:flutter_login_template_ui/screens/patterns.dart';
import 'package:flutter_login_template_ui/screens/pirple.dart';
import 'package:flutter_login_template_ui/screens/reddit_login.dart';
import 'package:flutter_login_template_ui/widgets/constants.dart';

class HomeList {
  Widget navigateScreen;
  String imagePath;

  HomeList({
    this.navigateScreen,
    this.imagePath = '',
  });

  static List<HomeList> homeList = [
    // Reddit
    HomeList(
      imagePath: UIGuide.reddit,
      navigateScreen: RedditLogin(),
    ),
    // Pirple
    HomeList(
      imagePath: UIGuide.pirple,
      navigateScreen: PirpleLogin(),
    ),
    // Grapple
    HomeList(
      imagePath: UIGuide.grapple,
      navigateScreen: GrappleLogin(),
    ),
    //Black & White
    HomeList(
      imagePath: UIGuide.blackwhite,
      navigateScreen: BlackWhiteLogin(),
    ),
    //Link
    HomeList(
      imagePath: UIGuide.link,
      navigateScreen: LinkLogin(),
    ),
    //Patterns
    HomeList(
      imagePath: UIGuide.patterns,
      navigateScreen: PatternsLogin(),
    ),
    //LightHouse
    HomeList(
      imagePath: UIGuide.lighthouse,
      navigateScreen: LightHouseLogin(),
    ),
    //Login
    HomeList(
      imagePath: UIGuide.login,
      navigateScreen: Login(),
    ),
  ];
}

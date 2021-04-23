import 'package:flutter/cupertino.dart';
import 'package:flutter_login_template_ui/screens/black&white_login.dart';
import 'package:flutter_login_template_ui/screens/grapple.dart';
import 'package:flutter_login_template_ui/screens/lighthouse.dart';
import 'package:flutter_login_template_ui/screens/link.dart';
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
      imagePath: UIHelper.reddit,
      navigateScreen: RedditLogin(),
    ),
    // Pirple
    HomeList(
      imagePath: UIHelper.pirple,
      navigateScreen: PirpleLogin(),
    ),
    // Grapple
    HomeList(
      imagePath: UIHelper.grapple,
      navigateScreen: GrappleLogin(),
    ),
    //Black & White
    HomeList(
      imagePath: UIHelper.blackwhite,
      navigateScreen: BlackWhiteLogin(),
    ),
    //Link
    HomeList(
      imagePath: UIHelper.link,
      navigateScreen: LinkLogin(),
    ),
    //Patterns
    HomeList(
      imagePath: UIHelper.patterns,
      navigateScreen: PatternsLogin(),
    ),
    //LightHouse
    HomeList(
      imagePath: UIHelper.lighthouse,
      navigateScreen: LightHouseLogin(),
    ),
  ];
}

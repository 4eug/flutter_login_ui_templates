import 'package:flutter/cupertino.dart';
import 'package:flutter_login_template_ui/screens/grapple.dart';
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
      imagePath: UIHelper.reddit,
      navigateScreen: PirpleLogin(),
    ),
    // Grapple
    HomeList(
      imagePath: UIHelper.reddit,
      navigateScreen: GrappleLogin(),
    ),
    //Black & White
    HomeList(
      imagePath: UIHelper.reddit,
      navigateScreen: RedditLogin(),
    ),
    //Link
    HomeList(
      imagePath: UIHelper.reddit,
      navigateScreen: RedditLogin(),
    ),
    //Patterns
    HomeList(
      imagePath: UIHelper.reddit,
      navigateScreen: RedditLogin(),
    ),
    //LightHouse
    HomeList(
      imagePath: UIHelper.reddit,
      navigateScreen: RedditLogin(),
    ),
  ];
}

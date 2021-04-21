import 'package:flutter/cupertino.dart';
import 'package:flutter_login_template_ui/screens/reddit_login.dart';
import 'package:flutter_login_template_ui/utils/constants.dart';

class HomeList {
  Widget navigateScreen;
  String imagePath;

  HomeList({
    this.navigateScreen,
    this.imagePath = '',
  });

  static List<HomeList> homeList = [
    HomeList(
      imagePath: UIHelper.applePhoto,
      navigateScreen: RedditLogin(),
    ),
  ];
}
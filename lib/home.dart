import 'package:flutter/material.dart';
import 'package:flutter_login_template_ui/utils/config.dart';
import 'package:flutter_login_template_ui/utils/constants.dart';
import 'models/loginui_model.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: SizeConfig.blockSizeHorizontal * 3,
                  bottom: SizeConfig.blockSizeVertical * 1,
                  left: SizeConfig.blockSizeHorizontal * 5,
                ),
                child: Image.asset(
                  AvailableIcons.menuIcon["assetPath"],
                  height: SizeConfig.blockSizeVertical * 2,
                  width: SizeConfig.blockSizeHorizontal * 5,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: SizeConfig.blockSizeVertical * 7,
              bottom: SizeConfig.blockSizeVertical * 2,
              left: SizeConfig.blockSizeHorizontal * 4,
            ),
            child: Text(
              "Login Ui Templates",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 37.0,
              ),
            ),
          ),
          Expanded(child: _loginuiGridBuilder(context))
        ],
      )),
    );
  }

// ignore: missing_return
  Widget _loginuiGridBuilder(BuildContext context) {
    // ignore: unused_local_variable
    final logins = [
      Login(
        loginName: "Pirple",
        loginImage: AvailableImages.pirple_login["assetPath"],
      ),
    ];

    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: logins.length,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          child: Container(
            height: SizeConfig.blockSizeVertical * 27,
            width: SizeConfig.blockSizeHorizontal * 5,
            margin: EdgeInsets.only(
              top: SizeConfig.blockSizeVertical * 4,
              left: SizeConfig.blockSizeHorizontal * 2,
              right: SizeConfig.blockSizeHorizontal * 2,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(1.0),
              ),
              color: Colors.grey[200],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: SizeConfig.blockSizeVertical * 1,
                    bottom: SizeConfig.blockSizeVertical * 1,
                    left: SizeConfig.blockSizeHorizontal * 1,
                  ),
                  child: Hero(
                    tag: logins[index].loginName,
                    transitionOnUserGestures: true,
                    child: Image.asset(
                      logins[index].loginImage,
                      height: SizeConfig.blockSizeVertical * 15,
                      width: SizeConfig.blockSizeHorizontal * 15,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: SizeConfig.blockSizeVertical * 1,
                  ),
                  child: Column(
                    children: [
                      Text(
                        logins[index].loginName,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

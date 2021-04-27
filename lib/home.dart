import 'package:flutter/material.dart';
import 'package:flutter_login_template_ui/home_list.dart';
import 'package:flutter_login_template_ui/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<bool> getData() async {
    await Future.delayed(const Duration(milliseconds: 0));
    return true;
  }

  List<HomeList> homeList = HomeList.homeList;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool multiple = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      appBar: _appBar,
      body: _body,
    );
  }

  Widget get _appBar => new AppBar(
        title: Center(
          child: Text(
            "Flutter Login Ui",
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
        ),
        actions: <Widget>[
          // IconButton(
          //   icon: Icon(multiple ? Icons.dashboard_outlined : Icons.view_agenda),
          //   onPressed: () {
          //     setState(() {
          //       multiple = !multiple;
          //     });
          //   },
          // ),
          Consumer<ThemeNotifier>(
              builder: (context, notifier, child) => IconButton(
                  icon: notifier.isDarkTheme
                      ? FaIcon(
                          FontAwesomeIcons.moon,
                          size: 20,
                          color: Colors.white,
                        )
                      : Icon(Icons.wb_sunny),
                  onPressed: () => {notifier.toggleTheme()}))
        ],
      );

  Widget get _body => FutureBuilder(
      future: getData(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return SizedBox();
        } else {
          return GridView(
            padding: EdgeInsets.only(top: 5, left: 12, right: 12),
            scrollDirection: Axis.vertical,
            children: List.generate(homeList.length, (index) {
              return HomeListView(
                listData: homeList[index],
                callBack: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => homeList[index].navigateScreen,
                    ),
                  );
                },
              );
            }),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: multiple ? 2 : 1,
              mainAxisSpacing: 12.0,
              crossAxisSpacing: 12.0,
              childAspectRatio: 1.5,
            ),
          );
        }
      });
}

class HomeListView extends StatelessWidget {
  final HomeList listData;
  final VoidCallback callBack;

  const HomeListView({
    Key key,
    this.listData,
    this.callBack,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Image.asset(
              listData.imagePath,
              fit: BoxFit.cover,
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                onTap: () {
                  callBack();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

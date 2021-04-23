import 'package:flutter/material.dart';
import 'package:flutter_login_template_ui/home_list.dart';
import 'package:flutter_login_template_ui/widgets/constants.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

List<HomeList> homeList = HomeList.homeList;
final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
bool multiple = true;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIHelper.BACKGROUND_COLOR,
      key: _scaffoldKey,
      body: _body,
    );
  }
}

Widget get _body => FutureBuilder(builder: (context, snapshot) {
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

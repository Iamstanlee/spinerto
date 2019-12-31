import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:spinerto/screens/user_profile/user_profile.dart';
import '../../helpers/common.dart';
import '../../helpers/common.dart';
import '../../helpers/common.dart';
import '../../helpers/common.dart';
import '../../helpers/common.dart';
import '../../helpers/common.dart';
import '../../helpers/common.dart';
import '../../helpers/common.dart';
import '../../helpers/functions.dart';
import '../../helpers/functions.dart';
import '../../helpers/functions.dart';
import '../../helpers/functions.dart';
import '../../helpers/functions.dart';
import '../../helpers/widgets/my_icons.dart';
import '../../helpers/widgets/my_icons.dart';

class Home extends StatefulWidget {
  static String tag = '/home';
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  Widget buildAppbar() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 18, right: 18),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[headerText('SPINERTO', color: Colors.black)],
            ),
          ),
          InkWell(
            onTap: () {
              pushRoute(context, UserProfile.tag);
            },
            child: Container(
              width: 60,
              height: 60,
              child: Image.asset('assets/images/userImage.png'),
            ),
          )
        ],
      ),
    );
  }

  Widget buildBanner(String banner) {
    return Container(
      margin: EdgeInsets.all(10.0),
      height: getHeight(context, height: 27),
      width: getWidth(context),
      padding: EdgeInsets.zero,
      child: Image.asset('assets/images/$banner'),
    );
  }

  Widget buildGameCard() {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        height: 120,
        width: 140,
        decoration: BoxDecoration(
          color: Colors.grey[300],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            buildAppbar(),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.all(2.0),
                          child: CarouselSlider(
                              autoPlayInterval: Duration(seconds: 4),
                              autoPlay: true,
                              height: getHeight(context, height: 27),
                              viewportFraction: 1.0,
                              items: [
                                buildBanner('banner2.jpg'),
                                buildBanner('gaming.png'),
                                buildBanner('promo.png'),
                                buildBanner('images.jpeg'),
                                buildBanner('images.png'),
                              ])),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0, left: 10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            headerText('TRENDING',
                                color: Colors.grey[600], size: 15),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 14, left: 0),
                              child: Image.asset(
                                'assets/images/fire.gif',
                                height: 40,
                                alignment: Alignment.topCenter,
                                width: 50,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(4),
                        child: Container(
                          height: 125,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              buildGameCard(),
                              buildGameCard(),
                              buildGameCard(),
                              buildGameCard(),
                              buildGameCard(),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5.0, left: 10.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: headerText('OTHER GAMES',
                              color: Colors.grey[600], size: 14),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(50),
                        child: headerText('... No other games available now',
                            color: Colors.grey[600], size: 14),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: facebookBlue,
        ),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: 0,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {}),
          items: [
            BottomNavyBarItem(
                icon: Icon(MyIcons.icon_home),
                title: headerText('HOME', color: Colors.black, size: 14),
                activeColor: Colors.red,
                inactiveColor: Colors.black),
            BottomNavyBarItem(
                icon: Icon(MyIcons.icon_puzzle),
                inactiveColor: Colors.black,
                title: headerText('MY GAME', color: Colors.black, size: 15),
                activeColor: facebookBlue),
            BottomNavyBarItem(
                icon: Icon(MyIcons.icon_chat),
                inactiveColor: Colors.black,
                title: headerText('CHATS', color: Colors.black, size: 15),
                activeColor: Colors.pink),
            BottomNavyBarItem(
                icon: Icon(MyIcons.icon_inbox),
                inactiveColor: Colors.black,
                title: headerText('CHATS', color: Colors.black, size: 15),
                activeColor: Colors.pink),
          ],
        ),
      ),
    );
  }
}

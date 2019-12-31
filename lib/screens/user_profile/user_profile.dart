import 'package:flutter/material.dart';
import '../../helpers/common.dart';
import '../../helpers/functions.dart';

class UserProfile extends StatefulWidget {
  static String tag = '/user_profile';
  @override
  State<StatefulWidget> createState() {
    return UserProfileState();
  }
}

class UserProfileState extends State<UserProfile> {
  double coverImageHeight = 200;
  double positionedImageLeft = 14;
  double positionedImageSize = 100;

  Widget buildImageContainer() {
    return Card(
      elevation: 2.0,
      shape: ContinuousRectangleBorder(),
      child: Container(
        height: 100,
        width: 100,
        padding: EdgeInsets.zero,
        child: Image.asset('assets/images/userImage.png', fit: BoxFit.cover),
      ),
    );
  }

  Widget buildColumn(String key, String value) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        baseText(key, color: Colors.black),
        headerText(value, color: Colors.grey[600]),
      ],
    );
  }

  Widget buildGameCard() {
    return Card(
      elevation: 6.0,
      child: Container(
        padding: EdgeInsets.only(right: 14.0),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10.0)),
        width: getWidth(context, width: 50),
        height: 120,
      ),
    );
  }

  Widget buildSuggestionWidget({String name, String price, int active}) {
    return Container(
      padding: EdgeInsets.only(right: 14.0),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(10.0)),
      width: getWidth(context, width: 50),
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Card(
            elevation: 1,
            child: Container(
              height: 90,
              width: 120,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                headerText(name, color: Colors.black),
                headerText(price, color: facebookBlue, size: 13),
                headerText('$active people active',
                    color: Colors.red[400], size: 13),
                Container(
                  height: 15,
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  color: Colors.grey[300],
                  child: headerText('PLAY', color: Colors.black, size: 13),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/app.jpg',
                        height: coverImageHeight,
                        width: getWidth(context),
                        fit: BoxFit.cover,
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(
                              positionedImageLeft + positionedImageSize + 14,
                              8.0,
                              8.0,
                              8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              headerText('Dev Stanlee', color: Colors.black),
                              Padding(
                                  padding: EdgeInsets.only(top: 4.0),
                                  child:
                                      baseText('#Bio', size: 13, color: grey))
                            ],
                          )),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          buildColumn('Followers', '20k'),
                          buildColumn('Following', '148'),
                          buildColumn('Likes', '18'),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Divider(
                          height: 4.0,
                          color: Colors.grey[300],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14, right: 14),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            headerText('ONGOING GAME',
                                color: Colors.grey[500], size: 14),
                            headerText('SEE ALL (12)',
                                color: facebookBlue, size: 12)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(14.0),
                        child: buildGameCard(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 14,
                        ),
                        child: headerText('SUGGESTED FOR YOU',
                            color: Colors.grey[500], size: 14),
                      ),
                      Padding(
                        padding: EdgeInsets.all(14.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            buildSuggestionWidget(
                                name: 'Vishal',
                                price: 'WIN iPHONE 11 PROMAX',
                                active: 8),
                            buildSuggestionWidget(
                                name: 'Sikander',
                                price: 'WIN iPHONE 6x',
                                active: 10),
                            buildSuggestionWidget(
                                name: 'Sreya',
                                price: 'TRIP TO L.A',
                                active: 12),
                          ],
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    top: coverImageHeight - 40,
                    left: positionedImageLeft,
                    child: buildImageContainer(),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

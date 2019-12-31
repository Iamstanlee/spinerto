import 'package:flutter/material.dart';
import 'package:spinerto/helpers/common.dart';
import 'package:spinerto/helpers/fonts.dart';
import 'package:spinerto/helpers/widgets/buttons.dart';
import 'package:spinerto/helpers/widgets/my_icons.dart';
import 'package:spinerto/helpers/widgets/text_field.dart';
import 'package:spinerto/screens/home/home.dart';
import '../../../helpers/functions.dart';

class SignUp extends StatefulWidget {
  static String tag = '/sign_up';
  @override
  State<StatefulWidget> createState() {
    return SignUpState();
  }
}

class SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, 20.0, 0, 4.0),
                child: headerText('SIGN UP FOR SPINERTO.', color: Colors.black),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, top: 0, bottom: 20.0),
                child: Text('Spin,Win and have Fun!',
                    style: TextStyle(
                        fontFamily: baseFont,
                        color: Colors.grey[600],
                        fontSize: 13)),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                child: TextInputField(
                  prefix: Icon(MyIcons.user_outline),
                  labelText: 'Full Name',
                  hintText: 'Foo Bar',
                  onSaved: (value) {},
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                child: TextInputField(
                  prefix: Icon(MyIcons.icon_mail),
                  labelText: 'Email Address',
                  hintText: 'foo@bar.com',
                  onSaved: (value) {},
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                child: TextInputField(
                  prefix: Icon(MyIcons.icon_lock_open),
                  labelText: 'Password',
                  hintText: 'password',
                  onSaved: (value) {},
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                child: TextInputField(
                  prefix: Icon(MyIcons.icon_lock_open),
                  labelText: 'Confirm Password',
                  hintText: 'password',
                  onSaved: (value) {},
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 4.0),
                child: Center(
                    child: baseText(
                  'By signing up, You\'re agreeing to our terms of use and privacy policy.',
                  color: Colors.grey[600],
                  size: 13,
                )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                child: Buttons.raisedButton('SIGN UP', () {
                  pushRoute(context, Home.tag);
                }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Divider(),
                  baseText('or', color: Colors.grey[600], size: 13),
                  Divider(),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                child: Buttons.raisedIconButton(
                    'Continue With Facebook',
                    ImageIcon(
                      AssetImage('assets/images/facebook.png'),
                      color: Colors.white,
                    ),
                    () {},
                    color: facebookBlue),
              )
            ],
          ),
        ));
  }
}

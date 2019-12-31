import 'package:flutter/material.dart';
import 'package:spinerto/screens/authentication/signup/signup.dart';
import 'package:spinerto/screens/home/home.dart';
import 'package:spinerto/screens/user_profile/user_profile.dart';
import 'screens/authentication/signup/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spinerto',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SignUp(),
        '/home': (context) => Home(),
        UserProfile.tag: (context) => UserProfile()
      },
    );
  }
}

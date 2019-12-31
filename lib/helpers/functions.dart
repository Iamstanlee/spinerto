import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';

/// return a random integer from range 0 to [max] params
int getRandomInt(int max) {
  return new Random().nextInt(max);
}

/// returns the formatted value of the passed double value
/// eg [2000] returns [2,000]
String formatDigits(double value) {
  FlutterMoneyFormatter flutterMoneyFormatter =
      new FlutterMoneyFormatter(amount: value);
  return flutterMoneyFormatter.output.nonSymbol;
}

/// returns a unique id of random characters
String getUid() {
  String uid = '';
  List<String> options = [
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
  ];
  for (int i = 0; i < 12; i++) {
    uid += getRandomInt(options.length).toString();
  }
  return uid;
}

/// takes a percentage of the screens width and return a double of current width
double getWidth(context, {width}) {
  if (width == null) return MediaQuery.of(context).size.width;
  return ((width / 100) * MediaQuery.of(context).size.width);
}

/// takes a percentage of the screens height and return a double of screen height.
double getHeight(context, {height}) {
  if (height == null) return MediaQuery.of(context).size.height;
  return ((height / 100) * MediaQuery.of(context).size.height);
}

/// Navigate to a new route by passing a route widget tag
void pushRoute(context, to) {
  Navigator.pushNamed(context, to);
}

void popRoute(context, {result}) {
  Navigator.pop(context, result);
}

/// Navigate to a new route by passing a route widget and params
void pushRouteWithParams(context, Widget to) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return to;
  }));
}

void toast(String message) {}

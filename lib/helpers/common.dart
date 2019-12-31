import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spinerto/helpers/fonts.dart';

Color baseColor = Color(0xFF);
Color facebookBlue = Color(0xFF4267B2);
Color grey = Colors.grey;
TextStyle baseStyle =
    TextStyle(fontFamily: baseFont, color: grey, fontSize: 16);
Text baseText(String text, {double size = 16, color = Colors.white}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(fontFamily: baseFont, fontSize: size, color: color),
  );
}

Text headerText(String text, {double size = 18, Color color = Colors.white}) {
  return Text(text,
      style: GoogleFonts.kulimPark(
          textStyle: TextStyle(
              color: color, fontSize: size, fontWeight: FontWeight.w600)));
}

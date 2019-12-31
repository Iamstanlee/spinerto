import 'package:flutter/material.dart';
import 'package:spinerto/helpers/common.dart';

class Buttons {
  static Widget raisedButton(String label, Function onPressed,
      {Color color = Colors.blue}) {
    return FlatButton(
      onPressed: onPressed,
      shape:
          ContinuousRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      color: color,
      child: headerText(label),
      padding: EdgeInsets.symmetric(vertical: 14.0),
    );
  }

  static Widget raisedIconButton(String label, Widget icon, Function onPressed,
      {Color color = Colors.blue}) {
    return FlatButton.icon(
      label: headerText(label, size: 16),
      icon: icon,
      onPressed: onPressed,
      shape:
          ContinuousRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      color: color,
      padding: EdgeInsets.symmetric(vertical: 10.0),
    );
  }
}

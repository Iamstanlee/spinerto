import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spinerto/helpers/my_strings.dart';
import 'package:spinerto/helpers/widgets/base_field.dart';

class TextInputField extends BaseTextField {
  TextInputField({
    @required FormFieldSetter<String> onSaved,
    @required Widget prefix,
    @required String labelText,
    @required String hintText,
  }) : super(
          labelText: labelText,
          hintText: hintText,
          onSaved: onSaved,
          prefix: prefix,
          keyboardType: TextInputType.text,
          validator: (String value) => validateField(value),
        );
  static String validateField(String input) {
    if (input.isEmpty) {
      return Strings.emptyStr;
    }
    return input.length > 20 ? Strings.emptyStr : null;
  }
}

class PasswordInputField extends BaseTextField {
  PasswordInputField({
    @required FormFieldSetter<String> onSaved,
    @required Widget prefix,
    @required String labelText,
    @required String hintText,
  }) : super(
          labelText: labelText,
          hintText: hintText,
          onSaved: onSaved,
          prefix: prefix,
          validator: (String value) => validateField(value),
        );
  static String validateField(String input) {
    if (input.isEmpty) {
      return Strings.emptyStr;
    }
    return input.length > 20 ? Strings.emptyStr : null;
  }
}

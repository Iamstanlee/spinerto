import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spinerto/helpers/fonts.dart';

class BaseTextField extends StatelessWidget {
  final Widget prefix;
  final String labelText;
  final String hintText;
  final List<TextInputFormatter> inputFormatters;
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator<String> validator;
  final TextEditingController controller;
  final String initialValue;
  final TextInputType keyboardType;

  BaseTextField(
      {this.prefix,
      this.labelText,
      this.hintText,
      this.inputFormatters,
      this.onSaved,
      this.validator,
      this.controller,
      this.initialValue,
      this.keyboardType})
      : super();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      inputFormatters: inputFormatters,
      onSaved: onSaved,
      validator: validator,
      maxLines: 1,
      initialValue: initialValue,
      keyboardType: keyboardType,
      style: TextStyle(
          color: Colors.grey[900], fontSize: 16.0, fontFamily: baseFont),
      decoration: new InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.grey, fontSize: 14.0),
        hintStyle:
            TextStyle(color: Colors.grey, fontSize: 16.0, fontFamily: baseFont),
        prefixIcon: prefix == null
            ? null
            : new Padding(
                padding: EdgeInsetsDirectional.only(end: 12.0),
                child: prefix,
              ),
        errorStyle: TextStyle(fontSize: 12.0, fontFamily: baseFont),
        errorMaxLines: 3,
        isDense: true,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 0.5)),
        focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).accentColor, width: 1.0)),
        hintText: hintText,
      ),
    );
  }
}

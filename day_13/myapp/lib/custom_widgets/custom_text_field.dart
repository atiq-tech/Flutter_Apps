import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomtextField extends StatelessWidget {
  Icon myicon;
  Icon suffixIcon;
  TextEditingController? controller;
  String? hintText, labelText;
  IconData? prefixIcon;
  dynamic? validator;
  TextInputType? keyboardType;

  CustomtextField(
      {Key? key,
      required this.myicon,
      this.controller,
      this.hintText,
      this.labelText,
      this.prefixIcon,
      required this.suffixIcon,
      this.validator,
      this.keyboardType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Color.fromARGB(255, 247, 6, 46),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
            color: Color.fromARGB(255, 156, 150, 150),
            fontSize: 16.0,
            fontWeight: FontWeight.w600),
        labelText: labelText,
        labelStyle: TextStyle(
            color: Color.fromARGB(255, 14, 13, 13),
            fontSize: 18.0,
            fontWeight: FontWeight.bold),
        prefixIcon: myicon,
        suffixIcon: suffixIcon,
      ),
    );
  }
}

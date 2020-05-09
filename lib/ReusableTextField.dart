import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;

  ReusableTextField({@required this.hintText, this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      style: TextStyle(
        fontSize: 20.0,
        color: Colors.black.withOpacity(.30),
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(bottom: 7.0),
        hintText: hintText,
      ),
    );
  }
}

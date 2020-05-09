import 'package:flutter/material.dart';

class Sign_in_option extends StatelessWidget {
  final String signIn;
  final BoxBorder borderColor;
  final TextStyle textStyle;
  final Function onClick;

  Sign_in_option({this.signIn, this.borderColor, this.onClick, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        padding: EdgeInsets.only(bottom: 10.0),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: borderColor,
        ),
        child: Text(
          signIn,
          style: textStyle,
        ),
      ),
    );
  }
}

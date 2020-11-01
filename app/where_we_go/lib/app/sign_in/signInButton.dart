import 'package:flutter/material.dart';
import 'package:where_we_go/widget/customRaisedButton.dart';

class SignInButton extends CustomRaisedButton {
  SignInButton({
    @required String text,
    Color color,
    Color textColor,
    double height=50.0,
    VoidCallback onPressed,
  })  : assert(text != null),
        super(
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
        color: color,
        height: height,
        onPressed: onPressed,
      );
}

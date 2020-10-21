import 'package:flutter/material.dart';
import 'package:where_we_go/widget/customRaisedButton.dart';

class CustomButton extends CustomRaisedButton {
  CustomButton({
    @required String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  })  : assert(text != null),
        super(
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
          color: color,
          onPressed: onPressed,
        );
}

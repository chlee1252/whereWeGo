import 'package:where_we_go/widget/circleAndText.dart';
import 'package:flutter/material.dart';

class SignInLogo extends CircleAndText {
  SignInLogo({
    @required text,
    @required radius,
    circleColor,
    textColor,
  }) : super(
    text: text,
    radius: radius,
    circleColor: circleColor,
    textColor: textColor,
  );
}

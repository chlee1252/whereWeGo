import 'package:where_we_go/widget/circleAndText.dart';
import 'package:flutter/material.dart';

class WelcomeLogo extends CircleAndText {
  WelcomeLogo({
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

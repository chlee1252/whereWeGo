import 'package:flutter/material.dart';

class CircleAndText extends StatelessWidget {
  CircleAndText({
    @required this.radius = 50.0,
    this.circleColor = Colors.green,
    @required this.text,
    this.textColor = Colors.green,
  })  : assert(radius != null || radius > 0),
        assert(text != null);

  final double radius;
  final Color circleColor;
  final Color textColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // This can be replaced with logo design.
        CircleAvatar(
          radius: this.radius,
          backgroundColor: this.circleColor,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          this.text,
          style: TextStyle(
            fontSize: 18.0,
            color: this.textColor,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}

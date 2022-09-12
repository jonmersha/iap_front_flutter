import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color textColor;
  final double textSize;
  final FontWeight fontWeight;
  final FontStyle fontStyle;

  CustomText({
    Key? key,
    required this.text,
    this.textColor = Colors.red,
    this.textSize = 20,
    this.fontWeight = FontWeight.normal,
    this.fontStyle = FontStyle.normal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 10),
        child: Text(
          text,
          style: TextStyle(
              fontSize: textSize,
              fontWeight: fontWeight,
              color: textColor,
              fontStyle: fontStyle),
        ));
  }
}

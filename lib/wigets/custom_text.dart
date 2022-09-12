import 'package:flutter/material.dart';

class CustomTextOLD extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight forntWeight;

  const CustomTextOLD(
      {Key? key,
      required this.text,
      this.size = 16,
      this.color = Colors.black,
      this.forntWeight = FontWeight.normal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: Text(
        this.text,
        style: TextStyle(fontWeight: this.forntWeight,fontSize: this.size,color: this.color),
      ),
    );
  }
}

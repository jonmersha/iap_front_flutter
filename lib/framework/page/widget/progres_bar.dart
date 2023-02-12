import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final double width;
  final Color color;
  final double percent;
  const ProgressBar({
    Key? key,
    required this.width,
    required this.color,
    required this.percent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Stack(

        children: [
          Container(
            height: 10,
            width: double.infinity,
            decoration: BoxDecoration(
                color: color.withOpacity(.5),
                borderRadius: BorderRadius.all(Radius.circular(5))),
          ),
          Container(
            height: 10,
            width: 45,
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.all(Radius.circular(5))),
          ),
        ],
      ),
    );
  }
}

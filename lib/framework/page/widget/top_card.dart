import 'package:flutter/material.dart';
import 'package:iap/framework/page/widget/progres_bar.dart';
import 'package:iap/widgets/custom_text.dart';

import '../../../constants/app_colors.dart';
import 'custom_text.dart';

class TopCard extends StatelessWidget {
  final String title;
  final String messageOne;
  final String messageTwo;
  final String messageTitleOne;
  final String messageTitleTwo;
  final Color progressColor;
  final double cardWidth;
  final double cardHeight;
  final Color cardBack;

  TopCard({
    Key? key,
    required this.title,
    required this.messageOne,
    required this.messageTwo,
    required this.messageTitleOne,
    required this.messageTitleTwo,
    required this.progressColor,
    required this.cardWidth,
    required this.cardHeight,
    this.cardBack = cardColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardHeight,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: cardBack,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: CustomText(
              text: title,
              textSize: 19,
              fontWeight: FontWeight.bold,
              textColor: light,
            ),
          ),
          ProgressBar(width: cardWidth,color: progressColor,percent: 50,),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 8, left: 10),
                    child: Text(messageTitleOne),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 8, right: 10),

                    child: Text(messageOne),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 8, left: 10),
                    child: Text(messageTitleTwo),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 8, right: 10),
                    child: Text(messageTwo),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

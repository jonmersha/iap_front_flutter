import 'package:flutter/material.dart';

class CardInformation {
  final String cardName;
  final String imagePath;
  final String messageTitleOne;
  final int messageONe;
  final String messageTitleTwo;
  final int messageTwo;
  final Color color;
  final int percentage;

  CardInformation({
  required this.imagePath,
  required this.messageTitleOne,
  required this.messageONe,
  required this.messageTitleTwo,
  required this.messageTwo,
  required this.color,
  required this.percentage,
    required this.cardName,
  });
}

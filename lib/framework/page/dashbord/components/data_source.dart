import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'list_object.dart';

List<PieChartSectionData> paichartSelectioData = [
  PieChartSectionData(
      color: Colors.yellow, radius: 30, showTitle: false, value: 15),
  PieChartSectionData(
      color: Colors.red, radius: 25, showTitle: false, value: 50),
  PieChartSectionData(
      color: Colors.green, radius: 20, showTitle: false, value: 15),
  PieChartSectionData(
      color: Colors.black, radius: 20, showTitle: false, value: 15),
];

List<ListObject> lists = [
  ListObject(
      fileName: "Engagements",
      imagePath: "assets/icons/Figma_file.svg",
      fileSize: "xyz",
      mediaType: "Text",
      color: Colors.blue,
      percentage: 50),
  ListObject(
      fileName: "PLan",
      imagePath: "assets/icons/google_drive.svg",
      fileSize: "xyz",
      mediaType: "Text",
      color: Colors.yellow,
      percentage: 80),
  ListObject(
      fileName: "FollowUp",
      imagePath: "assets/icons/media_file.svg",
      fileSize: "xyz",
      mediaType: "Text",
      color: Colors.amber,
      percentage: 60),
  ListObject(
      fileName: "Report",
      imagePath: "assets/icons/menu_doc.svg",
      fileSize: "xyz",
      mediaType: "Text",
      color: Colors.red,
      percentage: 30),

];
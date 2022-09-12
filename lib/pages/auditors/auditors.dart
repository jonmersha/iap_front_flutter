import 'package:flutter/material.dart';
import 'package:iap/wigets/custom_text.dart';

class Auditor extends StatelessWidget {
  const Auditor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomTextOLD(text: "Auditors Page",),
    );
  }
}

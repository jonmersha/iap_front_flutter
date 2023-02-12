import 'package:flutter/material.dart';
import 'package:iap/widgets/custom_text.dart';
class PageNotFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/icons/error.png", width: 350,),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CustomTextOLD(text: "Page not found", size: 24, forntWeight: FontWeight.bold,),
            ],
          )
        ],
      ),
    );
  }
}


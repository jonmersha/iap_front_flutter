import 'package:flutter/material.dart';
import 'package:iap/constants/app_colors.dart';
import 'package:iap/framework/page/plan/components/card_object.dart';



class QuarterProgress extends StatelessWidget {

  final String title;
  final  String message;
  final int progress;

  const QuarterProgress({
    Key? key,
    required this.title,
    required this.message,
    required this.progress
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: 10,
              decoration: BoxDecoration(
                  color: progressBack,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            LayoutBuilder(
              builder: (context, constraints) => Container(
                width: constraints.maxWidth*(progress/100),
                height: 10,
                decoration: BoxDecoration(
                    color: progressActive,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            )
          ],
        ),

        Container(
          height: 50,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title,
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.white70),),
                  Text('${progress } % completed',
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.deepOrange),)
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

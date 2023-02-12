import 'package:flutter/material.dart';
import 'package:iap/framework/page/plan/components/card_object.dart';



class ProgressLineWithMessage extends StatelessWidget {

 final  CardInformation cardContent;
  const ProgressLineWithMessage({
    Key? key,
    required this.cardContent,
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
              height: 5,
              decoration: BoxDecoration(
                  color: cardContent.color.withOpacity(0.1),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            LayoutBuilder(
              builder: (context, constraints) => Container(
                width: constraints.maxWidth*(cardContent.percentage/100),
                height: 5,
                decoration: BoxDecoration(
                    color: cardContent.color,
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
                  Text(cardContent.messageTitleOne,
                  style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: Colors.white70),),
                  Text(cardContent.messageONe.toString(),
                  style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: Colors.white70),)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(cardContent.messageTitleTwo,
                  style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: Colors.white70),),
                  Text(cardContent.messageTwo.toString(),
                  style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: Colors.white70),)
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

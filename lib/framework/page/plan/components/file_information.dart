import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iap/framework/page/plan/components/card_object.dart';
import 'package:iap/framework/page/plan/components/prograss_line.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/constants.dart';


class CardContent extends StatelessWidget {
  final CardInformation contentList;
  const CardContent({
    Key? key,
    required this.contentList,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(appPadding),
      decoration:  const BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 20,
            width: 20,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: SvgPicture.asset(contentList.imagePath),
          ),
          Text(
            contentList.cardName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          ProgressLineWithMessage(cardContent: contentList),

         // ProgressLine(lists: lists),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iap/constants/app_colors.dart';
import 'package:iap/constants/constants.dart';
import 'package:iap/framework/page/dashbord/components/prograss_line.dart';

import 'list_object.dart';

class FileInformation extends StatelessWidget {
  final ListObject lists;

  const FileInformation({
    Key? key,
    required this.lists,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration:  BoxDecoration(
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
            child: SvgPicture.asset(lists.imagePath),
          ),
          Text(
            lists.fileName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          ProgressLine(lists: lists),
        ],
      ),
    );
  }
}


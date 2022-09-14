import 'package:flutter/material.dart';
import '../../../../constants/constants.dart';
import '../../../../resposnsive.dart';
import 'card_object.dart';
import 'file_information.dart';

class TopCard extends StatelessWidget {
  final List<CardInformation> contentList;

  const TopCard({super.key, required this.contentList});


  @override
  Widget build(BuildContext context) {
    final Size _size=MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          const SizedBox(
            height: appPadding,
          ),
          //FileInfoCardGridView(lists: lists)
          Responsive(
              mobile: FileInfoCardGridView(
                lists: contentList,
                crossAxisCount: _size.width<650?2:4,
                childAspectRatio: _size.width<650?1.2:1.3,
              ),
              tablet: FileInfoCardGridView(
                lists: contentList,
                crossAxisCount: 4,
              ),
              desktop: FileInfoCardGridView(
                lists: contentList,
                crossAxisCount: 4,
                childAspectRatio: _size.width < 1400 ?1.1:1.4,
              ))
        ],
      ),
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView(
      {Key? key,
        required this.lists,
        this.crossAxisCount = 4,
        this.childAspectRatio = 1})
      : super(key: key);
      final List<CardInformation> lists;
      final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: lists.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: appPadding,
          mainAxisSpacing: appPadding
      ),
      itemBuilder: (context, index) => CardContent(contentList: lists[index], ),
    );
  }
}
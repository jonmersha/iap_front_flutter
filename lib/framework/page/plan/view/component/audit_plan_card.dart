import 'package:flutter/material.dart';

class PlanCard extends StatelessWidget {
  final String title;
  final String auditees;
   const PlanCard({
    Key? key, required this.title, required this.auditees,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(2.3),
        padding: EdgeInsets.only(left:5),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
            color:Color(0x22FFFFFF)
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(auditees,maxLines: 5,),
              ],
            )
          ],)
    );
  }
}
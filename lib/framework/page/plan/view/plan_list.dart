import 'package:flutter/material.dart';
import 'package:iap/framework/page/plan/view/component/quarter_container.dart';


class ViewPlanList extends StatefulWidget {

  const ViewPlanList({Key? key}) : super(key: key);

  @override
  State<ViewPlanList> createState() => _ViewPlanListState();
}

class _ViewPlanListState extends State<ViewPlanList> {
  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [

          Expanded(
            flex: 4,
            child:
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  const [
            Expanded( flex:1,child: QuarterCard(quarterNumber: 1,)),
            Expanded( flex:1,child: QuarterCard(quarterNumber: 2,)),
            Expanded( flex:1,child: QuarterCard(quarterNumber: 3,)),
            Expanded( flex:1,child: QuarterCard(quarterNumber: 4,)),



          ],
    ),),
    Expanded(
        flex: 2,
        child: Container(
          height: 200,
          color: Colors.orange,
        )),
        ],
      );
  }
}



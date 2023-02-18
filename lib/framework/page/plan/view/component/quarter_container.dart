import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iap/constants/app_colors.dart';
import 'package:iap/framework/page/helper/menu/controllers.dart';
import 'package:iap/framework/page/plan/view/component/audit_plan_card.dart';
import 'package:iap/framework/page/plan/view/component/progress.dart';
import 'package:iap/layout.dart';
import 'package:iap/widgets/custom_text.dart';

class QuarterCard extends StatelessWidget {

  final int quarterNumber;
  const QuarterCard({Key? key, required this.quarterNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5,right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          //color: Colors.white
      ),
      child: Column(

        children: [
          Container(
            height: 40,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
            ),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Quarter ${quarterNumber}'),
                InkWell(
                  onTap: (){
                menuController.changeActiveItemTo("/qplan");
                Get.back();
                navigationController.navigationTo("/qplan");
                  },
                    child: Text('More Action ...')
                ),

              ],
            ),
          ),

          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                  color:bgColor
            ),
            child:QuarterProgress(title:"Qaurter Prograss",message: "this is message",progress: 50,),
          ),
          PlanCard(title:"MIS Audit",auditees:"MIS TEAM preforming"),
          PlanCard(title:"ITSM Audit",auditees:"MIS TEAM"),
          PlanCard(title:"Netowork Audit",auditees:"MIS TEAM"),
          PlanCard(title:"Data Center facility Audit",auditees:"DCF Team"),

        ],
      ),
    );
  }
}


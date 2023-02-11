import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iap/framework/data/model/anual_plan.dart';
//import 'package:iap/framework/data/model/annual_plan_model.dart';
import 'package:iap/framework/page/helper/menu/controllers.dart';

import '../../data/model/plan_view_model.dart';

class EditAnnualPlan extends StatelessWidget {
  final AuditPlan auditPlan;
   EditAnnualPlan({Key? key, required this.auditPlan}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(auditPlan.aName!.toString()),
            //Text(auditPlan.engmonth!.toString()),
          ],
        ),
        ElevatedButton.icon(
            onPressed: (){gotoV();},
            icon: Icon(Icons.keyboard_backspace_outlined), label: const Text("Back")),
      ],
    );
  }
}


void gotoV(){
  Get.back();
  navigationController.navigationTo("Audit plan");
}

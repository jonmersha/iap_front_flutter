import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iap/constants/constants.dart';
import 'package:iap/framework/controller/annual_plan_controller.dart';
import 'package:iap/framework/page/helper/menu/controllers.dart';
import 'package:iap/framework/page/widget/custom_field.dart';
import 'package:iap/framework/page/widget/custom_text.dart';

class NewPlanFormContainer extends StatefulWidget {
  const NewPlanFormContainer({Key? key}) : super(key: key);
  @override
  State<NewPlanFormContainer> createState() => _NewPlanFormContainerState();
}
class _NewPlanFormContainerState extends State<NewPlanFormContainer> {
  final  auditName=TextEditingController();
  final  auditTeam=TextEditingController();
  final  startDate=TextEditingController();
  final  endDate=TextEditingController();
  final  riskLevel=TextEditingController();
  @override
  void dispose(){

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(appPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: (){
                  //Map<String, String> jsonData={"name":""};
                  //Get.find<AnnualPlanController>().addAnnualPlan(jsonData);
                  //Get.back();
                  navigationController.navigationTo("/addAuditObject");
                },
                child: Text("Add")

            ),
            CustomField(label: "Auditee's Name",hint: "Auditee's name",controller:auditName),
            CustomField(label: "Plan Start Date",hint: "Plan Start date",controller:startDate),
            CustomField(label: "Plan End Date",hint: "Plan end date",controller:endDate),
            CustomField(label: "Risk Grade",hint: "Risk Grade",controller:riskLevel),

            // CustomField(label: "Plan End Date",hint: "Plan End Date",controller:endDate),
            CustomText( text: auditTeam.text),
            ElevatedButton(
                onPressed: (){
              //Map<String, String> jsonData={"name":""};
              //Get.find<AnnualPlanController>().addAnnualPlan(jsonData);
              Get.back();
              navigationController.navigationTo("/PlanList");
            },
                child: Text("Add")

            )
          ],
        ),
      ),);
  }

  Future<dynamic> myDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          contentTextStyle: const TextStyle(color: Colors.black),
          content: Text(auditName.text),
        );
      },
    );
  }


}


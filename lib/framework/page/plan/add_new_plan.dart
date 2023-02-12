import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iap/framework/page/widget/custom_text.dart';
import '../../../constants/constants.dart';
import '../../controller/annual_plan_controller.dart';
import '../widget/custom_field.dart';

class AddNewPlan extends StatefulWidget {
  const AddNewPlan({Key? key}) : super(key: key);
  @override
  State<AddNewPlan> createState() => _AddNewPlanState();
}
class _AddNewPlanState extends State<AddNewPlan> {
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
      color: Colors.white,

      child: SingleChildScrollView(
        child: Column(
          children: [
             CustomField(label: "Auditee's Name",hint: "Auditee's name",controller:auditName),
             CustomField(label: "Plan Start Date",hint: "Plan Start date",controller:startDate),
             CustomField(label: "Plan End Date",hint: "Plan end date",controller:endDate),
             CustomField(label: "Risk Grade",hint: "Risk Grade",controller:riskLevel),

            // CustomField(label: "Plan End Date",hint: "Plan End Date",controller:endDate),
            CustomText( text: auditTeam.text),
            ElevatedButton(onPressed: (){
              Map<String, String> jsonData={"name":""};
              Get.find<AnnualPlanController>().addAnnualPlan(jsonData);
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


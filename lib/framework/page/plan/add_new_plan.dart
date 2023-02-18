import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iap/constants/url.dart';
import 'package:iap/framework/controller/annual_plan_controller.dart';
import 'package:iap/framework/controller/audit_object_controller.dart';
import 'package:iap/framework/controller/audit_year_controler.dart';
import 'package:iap/framework/controller/auditees_controller.dart';
import 'package:iap/framework/controller/risk_levele_controller.dart';
import 'package:iap/framework/page/audit_object/componenets/customer_form_field.dart';
import 'package:iap/framework/page/plan/add/components/customem_drop_down.dart';

class NewAuditPlan extends StatefulWidget {
  @override
  _NewAuditPlanState createState() => _NewAuditPlanState();

}

class _NewAuditPlanState extends State<NewAuditPlan> {
  //AuditObject auditObject=AuditObject();
  final _formKey = GlobalKey<FormState>();
  final TextEditingController riskScore = TextEditingController();

  //final TextEditingController a_desc = TextEditingController();

  late int planYear;
  late int auditType;
  late int auditees;
  late int riskLevel;

  @override
  void dispose() {
    riskScore.dispose();
    //a_desc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Audit Category: IT Audit',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
        Row(children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LabelText(label: 'Audit Year',),
                SizedBox(height: 16.0),
                DropDownBuilderAuditYear(path:AppConstants.GET_AUDIT_YEAR),
              ],
            ),
          ),
          Expanded(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LabelText(label: 'Audit Type'),
                SizedBox(height: 16.0),
                DropDownBuilderAuditObject(path:AppConstants.GET_AUDIT_OBJECT),
              ],
            ),
          ),

        ],
        ),



            SizedBox(height: 16.0),
            LabelText(label: 'Auditees'),
            SizedBox(height: 16.0),
            Container( width: 500,
                child:
                DropDownBuilderAuditees(path:AppConstants.GET_OU),
        ),
            SizedBox(height: 16.0),
            LabelText(label: "Risk Score"),
        SizedBox(height: 16.0),
        Container(
          width: 500,
          child: CustomTextForm(
            controller: riskScore,labelText: "Risk Score",hintText: "Enter Risk Score",errorMessage: "Please Enter Risk score",),
            ),
            SizedBox(height: 16.0),
        LabelText(label: "Risk Level"),
        SizedBox(height: 16.0),
        Container(
          width: 500,
            child:
                DropDownBuilderRiskLevel(path:AppConstants.GET_RIKS_LEVEL),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                 // print("Working");

                  Map<String, dynamic> jsonData = {
                    "audit_subject": this.auditType,
                    "audit_subject":this.auditType,
                    "auditees":this.auditees,
                    "team_id":2,
                    "audit_type":this.auditType,
                    "audit_year":this.planYear,
                    "risk_score":this.riskScore.text,
                    "risk_level":this.riskLevel
                  };

            Get.find<AnnualPlanController>().addAnnualPlan(jsonData);


                  //print(jsonData);
                }
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }

    GetBuilder<AuditObjectController> DropDownBuilderAuditObject({required String path,}) {
    Get.find<AuditObjectController>().getList(path:path,);

    return GetBuilder<AuditObjectController>(builder: (obj)
              {
                return  obj.isLoaded?
                CustomDropDowns(objectId: auditTypem, objectList: obj.data,):
                Container(child: Text('Load Shortly'),);
              });
  }

  GetBuilder<AuditeesController> DropDownBuilderAuditees({required String path,}) {
    Get.find<AuditeesController>().getList(path:path,);
    return GetBuilder<AuditeesController>(builder: (obj)
    {
      return  obj.isLoaded?
      CustomDropDowns(objectId: auditeesm, objectList: obj.data,):
      Container(child: Text('Load Shortly'),);
    });
  }
  GetBuilder<RiskLevelController> DropDownBuilderRiskLevel({
    required String path}) {
    Get.find<RiskLevelController>().getList(path:path,);
    return GetBuilder<RiskLevelController>(builder: (obj)
    {
      return  obj.isLoaded?
      CustomDropDowns(objectId: riskLevelm, objectList: obj.data,):
      Container(child: Text('Load Shortly'),);
    });
  }
  GetBuilder<AuditYearController> DropDownBuilderAuditYear({required String path,}) {
    Get.find<AuditYearController>().getList(path:path,);
    return GetBuilder<AuditYearController>(builder: (obj)
    {
      return  obj.isLoaded?
      CustomDropDowns(objectId: planYearm, objectList: obj.data,):
      Container(child: Text('Load Shortly'),);
    });
  }

  planYearm(dynamic object) {
    print(object.name);
    planYear=object.id;

  }
  auditTypem(dynamic object) {
    print(object.name);
    auditType=object.id;

  }
  auditeesm(dynamic object) {
    //print(object.name);
    auditees=object.id;
  }
  riskLevelm(dynamic object) {
    //print(object.name);
    riskLevel=object.id;
  }
}

class LabelText extends StatelessWidget {
  final String label;
  const LabelText({
    Key? key,
    required this.label
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.label,style: TextStyle(
      fontWeight: FontWeight.bold,
      //fontStyle: FontStyle.italic,
      backgroundColor: Colors.white,
      letterSpacing: 2,
      wordSpacing: 3,
    ),);
  }
}
class Plan{
 final int audit_subject;
 final int auditees;
 final int team_id;
 final int audit_type;
 final  int audit_year;
 final String risk_score;
 final  int risk_level;

  Plan({required this.audit_subject,
    required this.auditees,
    required this.team_id,
    required this.audit_type,
    required this.audit_year,
    required this.risk_score,
    required this.risk_level}

      );

}

//RiskLevelController
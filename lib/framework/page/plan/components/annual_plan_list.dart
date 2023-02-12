import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iap/framework/controller/annual_plan_controller.dart';
import 'package:iap/constants/app_colors.dart';
import '../../../../constants/constants.dart';
import '../../../data/repository/repo_helper.dart';
import 'package:intl/intl.dart';
import '../edit_plan.dart';
class AnnualPlanList extends StatefulWidget {
  const AnnualPlanList({Key? key}) : super(key: key);
  @override
  State<AnnualPlanList> createState() => _AnnualPlanListState();
}
class _AnnualPlanListState extends State<AnnualPlanList> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnnualPlanController>(builder: (annualPlanList) {
      return annualPlanList.isLoaded
          ? ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: annualPlanList.annualPLanLis.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(
                      left: appPadding, right: appPadding),
                  child: Container(
                    color: index.isEven ? Colors.cyan.shade100 : Colors.cyan.shade200,
                    child: Column(
                      children: [
                        if (index == 0)
                          Container(
                            color: cardColor,
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.start,
                              children: [
                                Container(
                                  width:40,
                                  child: const Text("No.",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                ),

                                    Container(width: 120,child: Text("Audit Name")),
                                    Container(width: 120,child: Text("Audites Name")),
                                    Container(width: 120,child: Text("Risk Score")),
                                    Container(width: 120,child: Text("Risk Level")),
                                    Container(width: 120,child: Text("Start Date")),
                                    Container(width: 120,child: Text("End Date")),


                              ],
                            ),
                          ),
                        InkWell(
                          onTap: (){
                            navigateTo(EditAnnualPlan(auditPlan:annualPlanList.annualPLanLis[index]));
                          },
                          onHover:(val){
                            setState(() {
                             // print(val);
                            });
                          } ,
                          child: Flexible(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width:40,
                                  child: Text(
                                    annualPlanList.annualPLanLis[index].id.toString(),
                                    style: const TextStyle(
                                        fontSize: 14, fontWeight: FontWeight.bold),
                                  ),
                                ),

                                     Container(
                                       width:120,
                                       child: Text(annualPlanList.annualPLanLis[index].aName.toString()),
                                     ),
                                Container(
                                  width:120,
                                  child: Text(annualPlanList.annualPLanLis[index].organName.toString()),
                                ),
                                Container(
                                  width:120,
                                  child: Text(annualPlanList.annualPLanLis[index].riskScore.toString()),
                                ),
                                Container(
                                  width:120,
                                  child: Text(annualPlanList.annualPLanLis[index].riskLevel.toString()),
                                ),
                                Container(
                                  width:120,
                                  child: Text(convertDate(annualPlanList.annualPLanLis[index].planStartDate.toString())),
                                ),
                                Container(
                                  width:120,
                                  child: Text(convertDate(annualPlanList.annualPLanLis[index].planEndDate.toString())),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              })
          : const CircularProgressIndicator(
              color: Colors.cyan,
            );
    });
  }
}
String convertDate(String dateFormT){
  var dateTime = DateTime.parse(dateFormT);
  return DateFormat.yMMMd().format(dateTime).toString();

}



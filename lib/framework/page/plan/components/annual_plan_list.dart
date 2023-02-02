import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iap/framework/controller/annual_plan_controller.dart';
import 'package:iap/constants/app_colors.dart';
import '../../../../constants/constants.dart';
import '../../../data/repository/repo_helper.dart';
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
                    color: index.isEven ? Colors.lightGreen : Colors.teal,
                    child: Column(
                      children: [
                        if (index == 0)
                          Container(
                            color: cardColor,
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("No.",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold)),
                                Container(
                                    width: 70,
                                    child: Text("Name")),
                                Text("Team"),
                                Text("Start Date"),
                                Text("End Date"),
                                Text("Quarter"),
                                Text("VR"),
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
                          child: Container(

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  annualPlanList.annualPLanLis[index].planID
                                      .toString(),
                                  style: const TextStyle(
                                      fontSize: 30, fontWeight: FontWeight.bold),
                                ),
                                Container(
                                    width: 70,
                                    child: Text(annualPlanList
                                        .annualPLanLis[index].auditName!)),
                                Text(annualPlanList
                                    .annualPLanLis[index]
                                    .engQuarter
                                    .toString()),
                                Text(annualPlanList
                                    .annualPLanLis[index]
                                    .planStartDate
                                    .toString()
                                    .substring(0, 10)),
                                Text(annualPlanList
                                    .annualPLanLis[index]
                                    .planEndDate
                                    .toString()
                                    .substring(0, 10)),
                                Text(annualPlanList
                                    .annualPLanLis[index]
                                    .auditGroup!
                                    .toString()),
                                Text(annualPlanList
                                    .annualPLanLis[index]
                                    .overalRiskScore!
                                    .toString()),
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
              color: Colors.greenAccent,
            );
    });
  }
}



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iap/constants/style.dart';
import 'package:iap/framework/controller/annual_plan_controller.dart';
import 'package:iap/utils/app_colors.dart';

import '../../../../menu/controllers.dart';

// class AnnualPlanList extends StatelessWidget {
//   const AnnualPlanList({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//        height: 150,
//       margin: const EdgeInsets.all(10),
//       decoration: const BoxDecoration(
//           color: cardColor,
//           borderRadius: BorderRadius.all(Radius.circular(10))),
//     );
//   }
// }
//

class AnnualPlanList extends StatefulWidget {
  const AnnualPlanList({Key? key}) : super(key: key);
  @override
  State<AnnualPlanList> createState() => _AnnualPlanListState();
}



class _AnnualPlanListState extends State<AnnualPlanList> {
  @override
  Widget build(BuildContext context) {
    return         GetBuilder<AnnualPlanController>(builder: (annualPlanList){
      return annualPlanList.isLoaded? ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: annualPlanList.annualPLanLis.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                //Get.to(()=>DetailServiceListContainer(serviceModel: anulaPlanContriller.serviceList[index]),
                   // transition: Transition.leftToRightWithFade,duration: const Duration(milliseconds: 800));
              },
              child: Container(
                margin: const EdgeInsets.only(
                    left: appPadding, right: appPadding),
                child: Container(
                  color: index.isEven?Colors.deepPurple[500]:cardColor,
                  child: Column(
                    children: [
                      if(index==0)
                        Container(
                          color: cardColor,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                          Text("No.",style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                          )
                          ),
                            Container(
                              width: 70,
                                child: Text("Name")),
                              Text("Team"),
                              Text("Start Date"),
                              Text("End Date"),
                              Text("Quarter"),
                              Text("")
                        ],),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                        Text(annualPlanList.annualPLanLis[index].planID.toString(),style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),),
                        Container(
                            width: 70,
                            child: Text(annualPlanList.annualPLanLis[index].auditName!)),
                        Text(annualPlanList.annualPLanLis[index].engQuarter.toString()),
                        Text(annualPlanList.annualPLanLis[index].planStartDate.toString().substring(0,10)),
                        Text(annualPlanList.annualPLanLis[index].planEndDate.toString().substring(0,10)),

                        Text(annualPlanList.annualPLanLis[index].auditGroup!.toString()),
                        Text(annualPlanList.annualPLanLis[index].overalRiskScore!.toString()),
                          ElevatedButton.icon(onPressed:(){ gotoV();}, icon: const Icon(Icons.more), label: const Text("..."))
                      ],),
                    ],
                  ),
                ),
              ),
            );
          }):CircularProgressIndicator(
        color:light,
      );
    });
  }
}

void gotoV(){
  Get.back();
  navigationController.navigationTo("editPlan");
  //_getPageRoute(EditAnnualPlan(auditPlan: ,));
}

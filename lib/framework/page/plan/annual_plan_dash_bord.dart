import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iap/framework/page/plan/components/card_object.dart';
import 'package:iap/framework/page/plan/upload_plan.dart';

import '../../../constants/constants.dart';
import '../../../resposnsive.dart';
import '../../../constants/app_colors.dart';
import '../../controller/annual_plan_controller.dart';
import '../../data/repository/repo_helper.dart';
import '../widget/charts/pie_chart.dart';
import '../widget/custom_text.dart';
import 'components/annual_plan_list.dart';
import 'components/plan_top_card.dart';


class AnnualPLanDashBord extends StatelessWidget {
  const AnnualPLanDashBord({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<PieChartSectionData> chartDat = [
      PieChartSectionData(
          color: Colors.yellow, radius: 30, showTitle: false, value: 15),
      PieChartSectionData(
          color: Colors.red, radius: 25, showTitle: false, value: 50),
      PieChartSectionData(
          color: Colors.green, radius: 20, showTitle: false, value: 15),
      PieChartSectionData(
          color: Colors.black, radius: 20, showTitle: false, value: 15),
    ];
    List<CardInformation> cardInfo = [
      CardInformation(
          cardName: "Current Quarter",
          imagePath: "assets/icons/Figma_file.svg",
          messageTitleOne: "Active",
          messageONe: 123,
          messageTitleTwo: "Completed",
          messageTwo: 23,
          percentage: 50,
          color: cardTop),
      CardInformation(
          cardName: "Progress",
          imagePath: "assets/icons/Figma_file.svg",
          messageTitleOne: "Active",
          messageONe: 123,
          messageTitleTwo: "Progress",
          messageTwo: 23,
          percentage: 50,
          color: cardTop),
      CardInformation(
          cardName: "Rectification Status",
          imagePath: "assets/icons/Figma_file.svg",
          messageTitleOne: "Team",
          messageONe: 123,
          messageTitleTwo: "Load",
          messageTwo: 23,
          percentage: 50,
          color: cardTop),
      CardInformation(
          cardName: "Active Work",
          imagePath: "assets/icons/Figma_file.svg",
          messageTitleOne: "Completed",
          messageONe: 123,
          messageTitleTwo: "Remaining",
          messageTwo: 23,
          percentage: 30,
          color: cardTop),
    ];
    Get.find<AnnualPlanController>().getAnnualPlanList();


    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 7,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TopCard(
                  contentList: cardInfo,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      child: CustomText(
                        text: 'Annual plan ',
                        textColor: light,
                        textSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: ElevatedButton.icon(
                          onPressed: () {navigateTo(UploadPlan());},
                          icon: const Icon(Icons.add),
                          label: const Text("Upload")),
                    )
                  ],
                ),
                const AnnualPlanList(),
                if (Responsive.isMobile(context))
                  RightSideCard(
                    paichartSelectioData: chartDat,
                  )
              ],
            ),
          ),
        ),
        if (!Responsive.isMobile(context))
          Expanded(
              flex: 3,
              child: RightSideCard(
                paichartSelectioData: chartDat,
              ))
      ],
    );
  }
}

class RightSideCard extends StatelessWidget {
  const RightSideCard({
    Key? key,
    required this.paichartSelectioData,
  }) : super(key: key);
  final List<PieChartSectionData> paichartSelectioData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(appPadding),
      padding: EdgeInsets.all(appPadding),
      decoration: const BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.all(Radius.circular(appPadding))),
      child: Column(
        children: [
          AnnualPlanChart(
            pieChartSelectionData: paichartSelectioData,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: appPadding / 2, vertical: appPadding / 5),
                margin: EdgeInsets.all(appPadding),
                color: Colors.red,
                child: Text("40%"),
              ),
              Text("Reported")
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: appPadding / 2, vertical: appPadding / 5),
                margin: EdgeInsets.all(appPadding),
                color: Colors.red,
                child: Text("90%"),
              ),
              Text(" 25 Complated")
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: appPadding / 2, vertical: appPadding / 5),
                margin: EdgeInsets.all(appPadding),
                color: Colors.yellow,
                child: Text("90%"),
              ),
              Text("Under Progress")
            ],
          ),
        ],
      ),
    );
  }
}




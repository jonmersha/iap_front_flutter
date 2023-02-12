
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iap/constants/app_colors.dart';
import 'package:iap/constants/constants.dart';
import 'package:iap/resposnsive.dart';


import 'components/chart.dart';
import 'components/data_source.dart';
import 'components/my_file.dart';
import 'components/storage_Info_card.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
           // const Header(),
            const SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        MayFile(lists: lists),
                        const SizedBox(height: defaultPadding,),
                        const RecentFile(),
                        if(Responsive.isMobile(context))
                          const SizedBox(width: defaultPadding,),
                        if(Responsive.isMobile(context))
                           RightSide(paichartSelectioData: paichartSelectioData)
                      ],
                    )),
                if(!Responsive.isMobile(context))
                const SizedBox(width: defaultPadding,),
                if(!Responsive.isMobile(context))
                Expanded(
                    flex: 2,
                    child: RightSide(paichartSelectioData: paichartSelectioData)
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class RecentFile extends StatelessWidget {
  const RecentFile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(defaultPadding),
      decoration:  BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Active Work",
            style: Theme.of(context).textTheme.subtitle1,
          ),

          SizedBox(
            width: double.infinity,
            child: DataTable(
              horizontalMargin: 0,
              columnSpacing: defaultPadding,
                columns: const [
              DataColumn(label: Text("Plan")),
              DataColumn(label: Text("Eng")),
              DataColumn(label: Text("Team")),
            ],
                rows: [

              DataRow(cells: [
                DataCell(
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                        "assets/icons/menu_doc.svg",
                      height: 20,
                      width: 20,

                    ),
                    Text("10")
                  ],
                )),
                DataCell(Text(" Tolcha Branch")),
                DataCell(Text("Branch Audit"))
              ]),
              DataRow(cells: [
                DataCell(
                    Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                        "assets/icons/menu_doc.svg",
                      height: 20,
                      width: 30,
                    ),
                    Text("12")
                  ],
                )),
                DataCell(Text("IS Security")),
                DataCell(Text("IT and System Audit"))
              ]),
              DataRow(cells: [

                DataCell(
                  Text("18")
                ),
                DataCell(Text("HR")),
                DataCell(Text("Head Office Audit"))
              ]),
              DataRow(cells: [
                DataCell(Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                        "assets/icons/menu_doc.svg"),
                    Text("19")
                  ],
                )),
                DataCell(Text("Special on Coopay")),
                DataCell(Text("Spacial Audit"))
              ]),


            ]),
          )
        ],
      ),
    );
  }
}

class RightSide extends StatelessWidget {
  const RightSide({
    Key? key,
    required this.paichartSelectioData,
  }) : super(key: key);

  final List<PieChartSectionData> paichartSelectioData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      decoration:  BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [
          const Text(
            "Overall Rectification Rate",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: defaultPadding),
          Chart(pieChartSelectionData: paichartSelectioData),
          const StorageInfoCard(
            title: "Enagagemnt Plan",
            image: "assets/icons/Documents.svg",
            fileAmount: "program",
            fileNumber: 123,
          ),
          const StorageInfoCard(
            title: "Reports",
            image: "assets/icons/Documents.svg",
            fileAmount: "Reports",
            fileNumber: 123,
          ),
          const StorageInfoCard(
            title: "FollowUp",
            image: "assets/icons/Documents.svg",
            fileAmount: "1.3",
            fileNumber: 123,
          ),

        ],
      ),
    );
  }
}

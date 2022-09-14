import 'package:flutter/material.dart';
import 'package:iap/constants/style.dart';
import 'package:iap/resposnsive.dart';
import 'package:iap/utils/app_colors.dart';

import 'add_new_plan.dart';
import 'components/annual_plan_list.dart';
import 'components/uploader.dart';

class UploadPlan extends StatelessWidget {
  const UploadPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController upload;
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: SingleChildScrollView(
            child: Column(
              children: [
                FileUploader(),
                AnnualPlanList(),
                if(Responsive.isMobile(context))
                  Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: cardColor,
                          borderRadius: BorderRadius.all(Radius.circular(appPadding))

                      ),
                      child: AddNewPlan())

              ],
            ),
          ),),
        if(!Responsive.isMobile(context))
        Expanded(
          flex: 2,
          child: Container(
          width: double.infinity,
          height: double.infinity,
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.all(Radius.circular(appPadding))
                
              ),
              child: AddNewPlan())
          ,),
      ],
    );
  }
}

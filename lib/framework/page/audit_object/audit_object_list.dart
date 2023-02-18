import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iap/constants/url.dart';
import 'package:iap/framework/controller/audit_object_controller.dart';

import 'package:iap/framework/data/model/audit_object_model.dart';


class AuditObjectList extends StatefulWidget {
  const AuditObjectList({Key? key}) : super(key: key);
  @override
  State<AuditObjectList> createState() => _AuditObjectListState();
}

class _AuditObjectListState extends State<AuditObjectList> {

  String? vale=' what value';

  int _auditSubject = 1;
  int _auditees = 1;
  String _auditYear = "2022-24";
AuditObject? auo;

  @override
  Widget build(BuildContext context) {
    Get.find<AuditObjectController>().getList(path:AppConstants.GET_PLAN);
    return GetBuilder<AuditObjectController>(builder: (obj){
      return obj.isLoaded?
      Column(
        children: [
          Row(
            children: [
             // Expanded(child: CustomDropDown(change_theState:change_theState,auditObjects: obj.auditObjects)),
            //  Expanded(child: CustomDropDown(change_theState:change_theState,auditObjects: obj.auditObjects)),
             // Expanded(child: CustomDropDown(change_theState:change_theState,auditObjects: obj.auditObjects)),
             // Expanded(child: CustomDropDown(change_theState:change_theState,auditObjects: obj.auditObjects)),
            ],
          ),

        ],
      )

      :CircularProgressIndicator(
        color: Colors.cyan,
      );

    });
  }
  @override
  void setState(VoidCallback fn) {
   // vale=auo?.;

   // super.setState(fn);
  }
  change_theState(String Vabue){
    vale=Vabue;
    print(this.vale);
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iap/constants/url.dart';
import 'package:iap/framework/controller/audit_object_controller.dart';

import 'package:iap/framework/data/model/audit_object_model.dart';

class CustomDropDownPlan extends StatelessWidget {
  AuditObject selectedObject;
  Function objectId;
  CustomDropDownPlan( { required this.objectId, required this.selectedObject});

  @override
  Widget build(BuildContext context) {
    Get.find<AuditObjectController>().getList(path: AppConstants.GET_PLAN);

    return GetBuilder<AuditObjectController>(builder: (obj)
    {
      return CutomeDropDownPlan(objectList: obj.data,objectId:objectId);

    });

  }
}

class CutomeDropDownPlan extends StatelessWidget {
  final List<dynamic> objectList;
  dynamic selectedObject;
  Function objectId;
  CutomeDropDownPlan({Key? key, required this.objectList, required  this.objectId}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButtonFormField<dynamic>(
        hint: const Text("Please Select"),
        value: selectedObject,
        onChanged: (dynamic newValue) {
          selectedObject = newValue;
          // print(selectedObject.aName);
          objectId(selectedObject.id);
        },
        items: objectList.map<DropdownMenuItem<dynamic>>((dynamic value) {
          return DropdownMenuItem<dynamic>(
              value: value,
              child: Text(value.aName)
          );
        }).toList(),

      ),
    );
  }
}



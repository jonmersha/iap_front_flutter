import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iap/framework/controller/audit_object_controller.dart';
import 'package:iap/framework/data/model/audit_object_model.dart';

class CustomDropDownAuditees extends StatelessWidget {
  AuditObject selectedObject;
  Function objectId;
  CustomDropDownAuditees( { required this.objectId, required this.selectedObject});

  @override
  Widget build(BuildContext context) {
    // Get.find<AuditObjectController>().getAuditObject();

    return GetBuilder<AuditObjectController>(builder: (obj)
    {
      return CutomeDropDown(objectList: obj.data,objectId:objectId);

    });

  }
}

class CutomeDropDown extends StatelessWidget {
  final List<dynamic> objectList;
  dynamic selectedObject;
  Function objectId;
  CutomeDropDown({Key? key, required this.objectList, required  this.objectId}) : super(key: key);
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



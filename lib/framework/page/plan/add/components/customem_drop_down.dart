import 'package:flutter/material.dart';


class CustomDropDowns extends StatelessWidget {
  final List<dynamic> objectList;
   dynamic? selectedObject;
  Function objectId;
  CustomDropDowns({Key? key,required this.objectList, required  this.objectId}) : super(key: key);
  @override
  Widget build(BuildContext context) {
   // objectList=Get.find<AuditObjectController>().auditObjects;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButtonFormField<dynamic>(
        hint: const Text("Please Select"),
        value: selectedObject,
        decoration: InputDecoration(
          filled: true,
            fillColor: Colors.blue[100],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onChanged: (dynamic newValue) {
            selectedObject = newValue;
           //print(selectedObject.aName);
            objectId(newValue);
        },
        items: objectList.map<DropdownMenuItem<dynamic>>((dynamic value) {
          return DropdownMenuItem<dynamic>(
              value: value,
              child: Text(value.name)
          );
        }).toList(),

      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iap/framework/page/helper/menu/controllers.dart';

class NewAuditObject extends StatefulWidget {
  const NewAuditObject({Key? key}) : super(key: key);

  @override
  State<NewAuditObject> createState() => _NewAuditObjectState();
}

class _NewAuditObjectState extends State<NewAuditObject> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
            onPressed: (){
                  Get.offNamed("/new");
             navigationController.navigationTo("/auditPlan");
            },
            child: Text("Add")
        ),
        Container(child: Text('New Audit Type'),),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iap/framework/data/model/audit_object_model.dart';
import 'package:iap/framework/page/audit_object/componenets/customer_form_field.dart';

class AuditObjectForm extends StatefulWidget {
  @override
  _AuditObjectFormState createState() => _AuditObjectFormState();
}

class _AuditObjectFormState extends State<AuditObjectForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController a_name = TextEditingController();
  final TextEditingController a_desc = TextEditingController();

  @override
  void dispose() {
    a_name.dispose();
    a_desc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Audit Category: IT Audit',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            CustomTextForm(controller: a_name,labelText: "Audit Name",hintText: "Audit Description",errorMessage: "Please Enter Audit Name",),
            SizedBox(height: 16.0),

            CustomTextForm(controller: a_desc,labelText: "Audit Name",hintText: "Audit Description",errorMessage: "Please Enter Audit Description",),
            SizedBox(height: 16.0),

            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  print('audit Name: ${a_name.text}');
                  print('Audit Description: ${a_desc.text}');

                }
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}



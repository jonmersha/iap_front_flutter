import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iap/framework/page/plan/add/components/customem_drop_down.dart';
import 'package:intl/intl.dart';

class AuditPlanRegidtrationForm extends StatefulWidget {
  @override
  _AuditPlanRegidtrationFormState createState() => _AuditPlanRegidtrationFormState();
}

class _AuditPlanRegidtrationFormState extends State<AuditPlanRegidtrationForm> {
  final _formKey = GlobalKey<FormState>();

  // Variables to store form data
  int _auditSubject = 1;
  int _auditees = 1;
  String _auditYear = "2022-24";

  @override
  Widget build(BuildContext context) {

    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          DropdownButtonFormField<int>(
            value: _auditees,
            onChanged: (value) {
              setState(() {
                _auditees = value!;
              });
            },
            items: const [
              DropdownMenuItem(
                value: 1,
                child: Text("Auditee 1"),
              ),
              DropdownMenuItem(
                value: 2,
                child: Text("Auditee 2"),
              ),
            ],
            decoration: const InputDecoration(labelText: "Auditees"),
            validator: (value) {
              if (value == null) {
                return "Please select the auditee(s)";
              }
              return null;
            },
          ),
          TextFormField(
            initialValue: _auditYear,
            decoration: const InputDecoration(labelText: "Audit Year"),
            onChanged: (value) {
              setState(() {
                _auditYear = value;
              });
            },
            validator: (value) {
              if (value!.isEmpty) {
                return "Please enter the audit year";
              }
              return null;
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Submit form and save data
              }
            },
            child: Text("Submit"),
          ),
        ],
      ),
    );
  }
}

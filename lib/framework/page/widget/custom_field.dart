import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller;

  const CustomField({
    Key? key,
    required this.label,
    required this.hint,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.red)),
            filled: true,
            // fillColor: Colors.blueAccent

            labelText: label,
            labelStyle: TextStyle(color: Colors.black),
            hintText: hint),
      ),
    );
  }
}

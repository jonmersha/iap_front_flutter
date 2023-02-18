import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm(
      {
    Key? key,
    required this.controller,
    required this.labelText,
    required this.hintText,
    required this.errorMessage,
  }
  ) : super(key: key);

  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        labelText: labelText,
        hintText: hintText,
        fillColor: Colors.blue[100],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),



      validator: (value) {
        if (value!.isEmpty) {
          return errorMessage;
        }
        return null;
      },
    );
  }
}
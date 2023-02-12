import 'package:flutter/material.dart';
class FileUploader extends StatelessWidget {
  const FileUploader({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text("please Upload The file"),
        ElevatedButton.icon(onPressed: (){}, icon:Icon(Icons.upgrade_rounded),label: Text("Select File")),
      ],
    );
  }
}

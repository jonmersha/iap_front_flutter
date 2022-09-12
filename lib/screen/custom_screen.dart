
import 'package:flutter/material.dart';
import 'package:iap/helpers/local_navigator.dart';
import 'package:iap/trash/side-menu.dart';
class CustomScreen extends StatelessWidget {
  const CustomScreen ({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(

            child: Container(
              color: Colors.deepOrange,
              child:  Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Expanded(
                      flex: 1,
                      child: SideMenu())
                ],
              ),
            )),
        Expanded(
            flex: 5,
            child: localNavigator()
        )

      ],
    );
  }
}
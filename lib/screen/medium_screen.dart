
import 'package:flutter/material.dart';
import 'package:iap/framework/page/helper/local_navigator.dart';
import 'package:iap/framework/page/helper/menu/right_side_menu.dart';
import 'package:iap/framework/page/helper/menu/side-menu.dart';
class MediumScreen extends StatelessWidget {
  const MediumScreen ({Key? key}) : super(key: key);

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
                      child: RightSideMenu())
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
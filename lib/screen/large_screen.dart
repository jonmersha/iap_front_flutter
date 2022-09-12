import 'package:flutter/material.dart';
import 'package:iap/helpers/local_navigator.dart';
import 'package:iap/trash/side-menu.dart';

import '../menu/right_side_menu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

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

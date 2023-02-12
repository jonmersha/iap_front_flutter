import 'package:flutter/material.dart';
import 'package:iap/framework/page/helper/menu/menu_container.dart';
import 'package:iap/framework/page/helper/local_navigator.dart';
import 'package:iap/trash/side-menu.dart';


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
                      child: MenuContainer())
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

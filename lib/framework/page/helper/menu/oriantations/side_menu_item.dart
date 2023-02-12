import 'package:flutter/material.dart';
import 'package:iap/framework/page/helper/menu/oriantations/horizontal_menu.dart';
import 'package:iap/framework/page/helper/menu/oriantations/vertical_menu.dart';
import 'package:iap/framework/page/helper/responsiveness.dart';
import 'package:iap/framework/routing/routes.dart';


class SideMenuItem extends StatelessWidget {
  final MyMenuItem itemName;
  final Function() onTap;
  const SideMenuItem({Key? key, required this.itemName, required this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
   if(ResponsiveWidget.isLargeSize(context)) {
     return HorizontalMenuItems(itemName: itemName.name, onTap: onTap);
   } else {
     return VerticalMenuItem(itemName: itemName.name, onTap: onTap);
   }
  }
}

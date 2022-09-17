import 'package:flutter/material.dart';
import 'package:iap/framework/page/helper/menu/oriantations/horizontal_menu.dart';
import 'package:iap/framework/page/helper/menu/oriantations/vertical_menu.dart';
import 'package:iap/framework/page/helper/responsiveness.dart';



class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function() onTap;
  const SideMenuItem({Key? key, required this.itemName, required this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
   if(ResponsiveWidget.isLargeSize(context)) {
     return VerticalMenuItem(itemName: itemName, onTap: onTap);
   } else {
     return HorizontalMenuItems(itemName: itemName, onTap: onTap);
   }
  }
}

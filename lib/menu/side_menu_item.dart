import 'package:flutter/material.dart';
import 'package:iap/helpers/responsiveness.dart';
import 'package:iap/menu/oriantations/horizontal_menu.dart';
import 'package:iap/menu/oriantations/vertical_menu.dart';

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

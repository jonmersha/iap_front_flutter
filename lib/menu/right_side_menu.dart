import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iap/utils/app_colors.dart';
import 'controllers.dart';
import '../routing/routes.dart';
import 'side_menu_item.dart';

class RightSideMenu extends StatelessWidget {
  const RightSideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: primaryColor,
      child: SingleChildScrollView(
        child:Column(
          mainAxisSize: MainAxisSize.min,
          children: sideMenuItem
              .map((itemName) => SideMenuItem(
              itemName: itemName == AuthenticationPageRoute
                  ? "Log Out"
                  : itemName,
              onTap: () {
                if (itemName == AuthenticationPageRoute) {}
                if (!menuController.isActive(itemName)) {

                  menuController.changeActiveItemTo(itemName);
                  Get.back();
                  navigationController.navigationTo(itemName);

                }
              }))
              .toList(),

        )


      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key, required this.title, required this.svgSrc, required this.press,
  }) : super(key: key);
  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color:Colors.white54,
        height: 16,

      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),);
  }
}

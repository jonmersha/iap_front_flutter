import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iap/constants/app_colors.dart';
import 'package:iap/framework/routing/routes.dart';
import 'package:iap/framework/security/authentication.dart';
import 'controllers.dart';
import 'oriantations/side_menu_item.dart';

class MenuContainer extends StatelessWidget {
  const MenuContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: sidebar,
      child: SingleChildScrollView(
        child:Column(
          mainAxisSize: MainAxisSize.min,
          children: sideMenuItem.map((item) => SideMenuItem(
              itemName: item.name,
              onTap: () {
                if (item.name == authenticationPageRoute) {
                  menuController.changeActiveItemTo(dashBordRouteDisplayName);
                  Get.offAll(Authentication());
                }
                if (!menuController.isActive(item.name)) {
                  menuController.changeActiveItemTo(item.name);
                  Get.back();
                  navigationController.navigationTo(item.route);

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
        color:Colors.black87,
        height: 16,

      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),);
  }
}

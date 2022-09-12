import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iap/menu/controllers.dart';
import 'package:iap/helpers/responsiveness.dart';
import 'package:iap/routing/routes.dart';
import 'package:iap/wigets/custom_text.dart';
import 'package:iap/menu/side_menu_item.dart';
import '../utils/app_colors.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallSize(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: _width / 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Image.asset(
                        "assets/icons/logo.png",
                        width: 30,
                      ),
                    ),
                    Flexible(
                        child: CustomTextOLD(
                      text: "Dash",
                      forntWeight: FontWeight.bold,
                   //   color: active,
                      size: 20,
                    )),
                    SizedBox(
                      width: _width / 48,
                    ),
                  ],
                ),
              ],
            ),
          const SizedBox(
            height: 40,
          ),
          Divider(
            color: lightGrey.withOpacity(.1),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItem
                .map((itemName) => SideMenuItem(
                    itemName: itemName == AuthenticationPageRoute
                        ? "Log Out"
                        : itemName,
                    onTap: () {
                      if (itemName == AuthenticationPageRoute) {

                      }
                      if (!menuController.isActive(itemName)) {
                        menuController.changeActiveItemTo(itemName);
                       // if (ResponsiveWidget.isCustomSize(context)) {
                          Get.back();
                          navigationController.navigationTo(itemName);

                      //  }
                      }
                    }))
                .toList(),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iap/constants/app_colors.dart';
import 'package:iap/framework/page/helper/menu/controllers.dart';
import 'package:iap/widgets/custom_text.dart';

class HorizontalMenuItems extends StatelessWidget {
  final String itemName;
  final Function() onTap;

  const HorizontalMenuItems(
      {Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover("not hovering");
      },
      child: Obx(() => Container(
            color: menuController.isHovering(itemName)
                ? Colors.blue.withOpacity(.1)
                : Colors.transparent,
            child: Row(
              children: [
                Visibility(
                  visible: menuController.isHovering(itemName) ||
                      menuController.isActive(itemName),
                  maintainSize: true,
                  maintainState: true,
                  maintainAnimation: true,
                  child: Container(
                    width: 18,
                    height: 40,
                    color: Colors.deepOrange,
                  ),
                ),
                SizedBox(
                  width: _width / 80,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: menuController.returnIconFor(itemName),
                ),
                if (!menuController.isActive(itemName))
                  Flexible(
                      child: CustomTextOLD(
                    text: itemName,
                    color: menuController.isHovering(itemName) ? hoveringMenu : menuColor,
                  ))
                else
                  Flexible(
                      child: CustomTextOLD(
                    text: itemName,
                        color: Colors.cyan,
                        size: 18,
                        forntWeight: FontWeight.bold,
                  ))
              ],
            ),
          )),
    );
  }
}

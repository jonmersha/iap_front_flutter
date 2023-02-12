import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iap/constants/app_colors.dart';
import 'package:iap/framework/page/helper/menu/controllers.dart';
import 'package:iap/widgets/custom_text.dart';



class VerticalMenuItem extends StatelessWidget {
  final String itemName;
  final Function() onTap;
  const VerticalMenuItem({Key? key, required this.itemName, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover("not hovering");
      },
      child: Obx(()=>Container(
        color: menuController.isHovering(itemName)
            ? listColor.withOpacity(.1)
            : Colors.transparent,
        child: Row(children: [
          Visibility(
            visible: menuController.isHovering(itemName) ||
                menuController.isActive(itemName),
            maintainSize: true,
            maintainState: true,
            maintainAnimation: true,
            child: Container(
              width: 3,
              height: 72,
              color: menuColor,
            ),

          ),
          Expanded(child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: menuController.returnIconFor(itemName),
              ),
              if (!menuController.isActive(itemName))
                Flexible(
                    child: CustomTextOLD(
                      text: itemName,
                      color:
                      menuController.isHovering(itemName) ? hoveringMenu : menuColor,
                    ))
              else
                Flexible(
                    child: CustomTextOLD(
                      text: itemName,
                      color: selectedMenu,
                      size: 14,
                      forntWeight: FontWeight.bold,
                    ))
            ],
          ))
        ],),
      )),


    );
  }
}

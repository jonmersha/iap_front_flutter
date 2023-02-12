import 'package:flutter/material.dart';
import 'package:iap/framework/page/helper/responsiveness.dart';
import 'package:iap/constants/app_colors.dart';

import '../constants/constants.dart';
import 'custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) {

  return AppBar(
    leading: !ResponsiveWidget.isSmallSize(context)
        ? Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 14),
                child: Image.asset(
                  "assets/icons/logo.png",
                  width: 28,
                ),
              )
            ],
          )
        : IconButton(
            onPressed: () {
              key.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu)),
    elevation: 0,
    title: Row(
      children: [
        Visibility(
          child: CustomTextOLD(
            text: "Dash",
            color: lightGrey,
            size: 20,
            forntWeight: FontWeight.bold,
          ),
        ),
        Expanded(child: Container()),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: iconColor,
            )),
        Stack(
          children: [
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
            Positioned(
              top: 7,
              right: 7,
              child: Container(
                width: 12,
                height: 12,
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    // color: active,
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    border: Border.all(color: light, width: 2)),
              ),
            )
          ],
        ),
        Container(
          width: 1,
          height: 22,
          color: iconColor,
        ),
        const SizedBox(
          width: 24,
        ),
        if (!ResponsiveWidget.isSmallSize(context))
          CustomTextOLD(
            text: "Yohannes mitike",
            color: lightGrey,
          ),
        const SizedBox(
          width: 16,
        ),
        Container(
          width: 40,
          height: 40,
          decoration:  BoxDecoration(
              color: iconColor,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/profile_pic.jpg",
                  ),
                  fit: BoxFit.fill)),
        )
      ],
    ),
    iconTheme: IconThemeData(color: iconColor),
    backgroundColor: topBar,
  );


}

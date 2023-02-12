// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:iap/constants/app_colors.dart';
// import 'package:iap/framework/page/helper/menu/controllers.dart';
//
//
// import 'package:iap/framework/page/helper/responsiveness.dart';
// import 'package:iap/framework/routing/routes.dart';
// import 'package:iap/widgets/custom_text.dart';
//
//
// class SideMenu extends StatelessWidget {
//   const SideMenu({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     double _width = MediaQuery.of(context).size.width;
//     return Container(
//       color: light,
//       child: ListView(
//         children: [
//           if (ResponsiveWidget.isSmallSize(context))
//             Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 const SizedBox(
//                   height: 40,
//                 ),
//                 Row(
//                   children: [
//                     SizedBox(
//                       width: _width / 80,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 12),
//                       child: Image.asset(
//                         "assets/icons/logo.png",
//                         width: 30,
//                       ),
//                     ),
//                     Flexible(
//                         child: CustomTextOLD(
//                       text: "Dash",
//                       forntWeight: FontWeight.bold,
//                    //   color: active,
//                       size: 20,
//                     )),
//                     SizedBox(
//                       width: _width / 48,
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           const SizedBox(
//             height: 40,
//           ),
//           Divider(
//             color: lightGrey.withOpacity(.1),
//           ),
//           Column(
//             mainAxisSize: MainAxisSize.min,
//             children: sideMenuItem.map((item) => SideMenuItem(
//                     itemName: item.name,
//                     onTap: () {
//                       if (item.route == authenticationPageRoute) {
//                         menuController.changeActiveItemTo(dashBordRouteDisplayName);
//                         Get.offAllNamed(authenticationPageRoute);
//                       }
//                       if (!menuController.isActive(item.name)) {
//                         menuController.changeActiveItemTo(item.name);
//                           Get.back();
//                           navigationController.navigationTo(item.route);
//
//                       //  }
//                       }
//                     }))
//                 .toList(),
//           )
//         ],
//       ),
//     );
//   }
// }

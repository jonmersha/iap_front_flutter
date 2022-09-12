import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iap/framework/controller/annual_plan_controller.dart';

import 'package:iap/utils/app_colors.dart';

import 'layout.dart';
import 'framework/helper/repo_helper.dart' as dep;
import 'menu/controllers/menu_controller.dart';
import 'menu/controllers/navigation_controller.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(const AuditApp());
}
class AuditApp extends StatelessWidget {
  const AuditApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<AnnualPlanController>().getAnnualPlanList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "IAP",
      theme: ThemeData(
        //scaffoldBackgroundColor: Colors.white,
          scaffoldBackgroundColor:bgColor,
          textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme
        ).apply(
          bodyColor: Colors.white
        ),
        pageTransitionsTheme: const PageTransitionsTheme(builders:{
          TargetPlatform.iOS:const FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android:const FadeUpwardsPageTransitionsBuilder(),

        }),
          primaryColor: Colors.blue
      ),
      home: SiteLayout(),
    );
  }
}

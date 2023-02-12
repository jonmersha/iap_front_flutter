import 'package:flutter/material.dart';

import 'package:iap/trash/side-menu.dart';
import 'package:iap/framework/page/helper/responsiveness.dart';
import 'package:iap/screen/custom_screen.dart';
import 'package:iap/screen/large_screen.dart';
import 'package:iap/screen/small_screen.dart';
import 'package:iap/widgets/top_nav_bar.dart';

import 'constants/constants.dart';
import 'framework/page/helper/menu/menu_container.dart';


class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar:  topNavigationBar(context, scaffoldKey),
      drawer:  const Drawer(
        child: MenuContainer(),
      ),
      body: const ResponsiveWidget(
      largeScreen: LargeScreen(),
      mediumScreen: SmallScreen(),
      smallScreen: SmallScreen(),
      customScreen: CustomScreen(),


    )

    )
    ;
  }
}

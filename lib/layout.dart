import 'package:flutter/material.dart';
import 'package:iap/helpers/responsiveness.dart';
import 'package:iap/screen/custom_screen.dart';
import 'package:iap/screen/large_screen.dart';
import 'package:iap/menu/right_side_menu.dart';
import 'package:iap/screen/small_screen.dart';
import 'package:iap/wigets/top_nav_bar.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: const Drawer(
        child: RightSideMenu(),
      ),
      body: const ResponsiveWidget(
          largeScreen: LargeScreen(),
          mediumScreen: SmallScreen(),
          smallScreen: SmallScreen(),
        customScreen: CustomScreen(),

      ),
    );
  }
}

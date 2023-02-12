import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

const int largeScreenSize=1366;
const int mediumScreenSize=768;
const int smallScreenSize=500;
const int customScreenSize=1100;



class ResponsiveWidget extends StatelessWidget {

  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;
  final Widget  customScreen;


  const ResponsiveWidget({Key? key,
    required this.largeScreen,
    required this.mediumScreen,
    required this.customScreen,
    required this.smallScreen,


  }) : super(key: key);

  static bool isSmallSize(BuildContext context)=>
      MediaQuery.of(context).size.width < mediumScreenSize;

  static bool isMediumSize(BuildContext context)=>
      MediaQuery.of(context).size.width >= smallScreenSize &&
      MediaQuery.of(context).size.width < largeScreenSize;

  static bool isLargeSize(BuildContext context)=>
      MediaQuery.of(context).size.width >= largeScreenSize;
  static bool isCustomSize(BuildContext context)=>
      MediaQuery.of(context).size.width>=mediumScreenSize &&
          MediaQuery.of(context).size.width<=customScreenSize;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints) {
      double width=constraints.maxWidth;
      if(width >= largeScreenSize){
          return largeScreen;
      }
      else if(width < largeScreenSize && width >= mediumScreenSize){
        return largeScreen;
      }
      else {
        return smallScreen;
      }

    }
    );
  }
}

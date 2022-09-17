import 'package:flutter/material.dart';
import 'package:iap/framework/page/404/error.dart';
import 'package:iap/framework/page/plan/annual_plan_dash_bord.dart';
import 'package:iap/framework/security/authentication.dart';
import 'package:iap/pages/auditors/auditors.dart';
import 'package:iap/framework/routing/routes.dart';
import 'package:iap/pages/dashbord/dashbord_screen.dart';



Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case dashBord:
      return _getPageRoute(DashBoardScreen());//OverView()
    case annualPlan:
      return _getPageRoute(AnnualPLanDashBord());
      case authenticationPageRoute:
      return _getPageRoute(Authentication());
    default:
      return _getPageRoute(PageNotFound());

  }
}


PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder:(context)=>child);
}
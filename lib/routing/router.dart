import 'package:flutter/material.dart';
import 'package:iap/framework/page/plan/annual_plan_dash_bord.dart';
import 'package:iap/pages/audit/audit_plan.dart';
import 'package:iap/pages/auditors/auditors.dart';
import 'package:iap/routing/routes.dart';

import '../framework/page/plan/edit_plan.dart';
import '../pages/dashbord/dashbord_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case dashBord:
      return _getPageRoute(DashBoardScreen());//OverView()
    case annualPlan:
      return _getPageRoute(AnnualPLanDashBord());
    default:
      return _getPageRoute(Auditor());

  }
}


PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder:(context)=>child);
}
import 'package:flutter/material.dart';
import 'package:iap/framework/page/404/error.dart';
import 'package:iap/framework/page/audit_object/new_audit.dart';
import 'package:iap/framework/page/dashbord/dashbord_screen.dart';
import 'package:iap/framework/page/plan/add/form_canitainer.dart';
import 'package:iap/framework/page/plan/annual_plan_dash_bord.dart';
import 'package:iap/framework/page/plan/view/plan_view.dart';
import 'package:iap/framework/security/authentication.dart';

import 'package:iap/framework/routing/routes.dart';




Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case dashBord:
      return _getPageRoute(DashBoardScreen());//OverView()
    case annualPlan:
      return _getPageRoute(ViewPlan());
      case "/PlanList":
      return _getPageRoute(ViewPlan());
    case authenticationPageRoute:
      return _getPageRoute(Authentication());
    case "/addPlan":
      return _getPageRoute(NewPlanFormContainer());
    case "/addAuditObject":
      return _getPageRoute(NewAuditObject());

    default:
      return _getPageRoute(PageNotFound());

  }
}


PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder:(context)=>child);
}
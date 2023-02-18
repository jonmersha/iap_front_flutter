import 'package:flutter/material.dart';
import 'package:iap/framework/page/404/error.dart';
import 'package:iap/framework/page/audit_object/add_new/add_audit_object.dart';
import 'package:iap/framework/page/audit_object/new_audit.dart';
import 'package:iap/framework/page/dashbord/dashbord_screen.dart';
import 'package:iap/framework/page/plan/add/form_canitainer.dart';
import 'package:iap/framework/page/plan/add/plan_reg_form.dart';
import 'package:iap/framework/page/plan/add_new_plan.dart';
import 'package:iap/framework/page/plan/annual_plan_dash_bord.dart';
import 'package:iap/framework/page/plan/view/plan_view.dart';
import 'package:iap/framework/security/authentication.dart';

import 'package:iap/framework/routing/routes.dart';

import '../page/audit_object/audit_object_list.dart';




Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case dashBord:
      return _getPageRoute(DashBoardScreen());//OverView()
    case annualPlan:
      return _getPageRoute(ViewPlan());
      case "/PlanList":
      return _getPageRoute(ViewPlan());
    case AuthenticationPageRoute:
      return _getPageRoute(Authentication());
    case "/addPlan":
      return _getPageRoute(NewAuditPlan());
    case "/qplan":
      return _getPageRoute(AuditPlanRegidtrationForm());
    case "/addAuditObject":
      return _getPageRoute(AuditObjectForm());
      case "/aol":
      return _getPageRoute(AuditObjectList());

    default:
      return _getPageRoute(PageNotFound());

  }
}


PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder:(context)=>child);
}
import 'package:flutter/material.dart';

const rootRoute="/";

const dashBordRouteDisplayName="dash bord";
const annualPlanRouteDisplayName="Annual Plan";
const planListDisplayName="plan list";
const auditProgramRouteDisplayName="Audit Program";
const engagementRouteDisplayName="Audit Engagement";
const authenticationRouteDisplayName="Log Out";




const dashBord="/Dash Bord";
const annualPlan="/Audit Plan";
const planList="/PlanList";
const AuditEngamentPageRoute="/Engagement";
const AuditProgramPageRoute="/Audit Program";
const authenticationPageRoute="/outh";
const editPlan="/editPlan";
//const pageNotFound=""

class MenuItem{
  final String name;
  final String route;

  MenuItem(this.name, this.route);

}


List<MenuItem> sideMenuItem=[
  MenuItem(dashBordRouteDisplayName,dashBord),
  MenuItem(annualPlanRouteDisplayName,annualPlan),
  MenuItem(auditProgramRouteDisplayName,AuditProgramPageRoute,),
  MenuItem(engagementRouteDisplayName,AuditEngamentPageRoute),
  MenuItem(authenticationRouteDisplayName,authenticationPageRoute),
  MenuItem("Plan List", "/PlanList"),
  MenuItem("New PLan", "/addPlan"),


];

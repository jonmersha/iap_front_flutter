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
const AuthenticationPageRoute="/auth";
const editPlan="/editPlan";
//const pageNotFound=""

class MyMenuItem{
  final String name;
  final String route;

  MyMenuItem(this.name, this.route);

}


List<MyMenuItem> sideMenuItem=[
  MyMenuItem(dashBordRouteDisplayName,dashBord),
  MyMenuItem(annualPlanRouteDisplayName,annualPlan),
  MyMenuItem(auditProgramRouteDisplayName,AuditProgramPageRoute,),
  MyMenuItem(engagementRouteDisplayName,AuditEngamentPageRoute),
  MyMenuItem("Plan List", "/PlanList"),
  MyMenuItem("New PLan", "/addPlan"),
  MyMenuItem("Audit object", "/aol"),
  MyMenuItem("Add Audit Object", "/addAuditObject"),

  MyMenuItem(authenticationRouteDisplayName,AuthenticationPageRoute),
];
List<MyMenuItem> adminMenu=[
  MyMenuItem(dashBordRouteDisplayName,dashBord),
  MyMenuItem(annualPlanRouteDisplayName,annualPlan),
  MyMenuItem(auditProgramRouteDisplayName,AuditProgramPageRoute,),
  MyMenuItem(engagementRouteDisplayName,AuditEngamentPageRoute),
  MyMenuItem("Plan List", "/PlanList"),
  MyMenuItem("New PLan", "/addPlan"),

  MyMenuItem(authenticationRouteDisplayName,AuthenticationPageRoute),
];


List<MyMenuItem> auditorMenu=[
  MyMenuItem(dashBordRouteDisplayName,dashBord),
  MyMenuItem(annualPlanRouteDisplayName,annualPlan),
  MyMenuItem(auditProgramRouteDisplayName,AuditProgramPageRoute,),
  MyMenuItem(engagementRouteDisplayName,AuditEngamentPageRoute),
  MyMenuItem("Plan List", "/PlanList"),
  MyMenuItem("New PLan", "/addPlan"),

  MyMenuItem(authenticationRouteDisplayName,AuthenticationPageRoute),
];

List<MyMenuItem> teamManager=[
  MyMenuItem(dashBordRouteDisplayName,dashBord),
  MyMenuItem(annualPlanRouteDisplayName,annualPlan),
  MyMenuItem(auditProgramRouteDisplayName,AuditProgramPageRoute,),
  MyMenuItem(engagementRouteDisplayName,AuditEngamentPageRoute),
  MyMenuItem("Plan List", "/PlanList"),
  MyMenuItem("New PLan", "/addPlan"),

  MyMenuItem(authenticationRouteDisplayName,AuthenticationPageRoute),
];

List<MyMenuItem> auditDirectorMenu=[
  MyMenuItem(dashBordRouteDisplayName,dashBord),
  MyMenuItem(annualPlanRouteDisplayName,annualPlan),
  MyMenuItem(auditProgramRouteDisplayName,AuditProgramPageRoute,),
  MyMenuItem(engagementRouteDisplayName,AuditEngamentPageRoute),
  MyMenuItem("Plan List", "/PlanList"),
  MyMenuItem("New PLan", "/addPlan"),

  MyMenuItem(authenticationRouteDisplayName,AuthenticationPageRoute),
];


List<MyMenuItem> auditeesMenu=[
  MyMenuItem(dashBordRouteDisplayName,dashBord),
  MyMenuItem(annualPlanRouteDisplayName,annualPlan),
  MyMenuItem(auditProgramRouteDisplayName,AuditProgramPageRoute,),
  MyMenuItem(engagementRouteDisplayName,AuditEngamentPageRoute),
  MyMenuItem("Plan List", "/PlanList"),
  MyMenuItem("New PLan", "/addPlan"),

  MyMenuItem(authenticationRouteDisplayName,AuthenticationPageRoute),
];

List<MyMenuItem> chiefAuditorMenu=[
  MyMenuItem(dashBordRouteDisplayName,dashBord),
  MyMenuItem(annualPlanRouteDisplayName,annualPlan),
  MyMenuItem(auditProgramRouteDisplayName,AuditProgramPageRoute,),
  MyMenuItem(engagementRouteDisplayName,AuditEngamentPageRoute),
  MyMenuItem("Plan List", "/PlanList"),
  MyMenuItem("New PLan", "/addPlan"),

  MyMenuItem(authenticationRouteDisplayName,AuthenticationPageRoute),
];

List<MyMenuItem> presidentOffice=[
  MyMenuItem(dashBordRouteDisplayName,dashBord),
  MyMenuItem(annualPlanRouteDisplayName,annualPlan),
  MyMenuItem(auditProgramRouteDisplayName,AuditProgramPageRoute,),
  MyMenuItem(engagementRouteDisplayName,AuditEngamentPageRoute),
  MyMenuItem("Plan List", "/PlanList"),
  MyMenuItem("New PLan", "/addPlan"),

  MyMenuItem(authenticationRouteDisplayName,AuthenticationPageRoute),
];

List<MyMenuItem> vps=[
  MyMenuItem(dashBordRouteDisplayName,dashBord),
  MyMenuItem(annualPlanRouteDisplayName,annualPlan),
  MyMenuItem(auditProgramRouteDisplayName,AuditProgramPageRoute,),
  MyMenuItem(engagementRouteDisplayName,AuditEngamentPageRoute),
  MyMenuItem("Plan List", "/PlanList"),
  MyMenuItem("New PLan", "/addPlan"),

  MyMenuItem(authenticationRouteDisplayName,AuthenticationPageRoute),
];

List<MyMenuItem> board=[
  MyMenuItem(dashBordRouteDisplayName,dashBord),
  MyMenuItem(annualPlanRouteDisplayName,annualPlan),
  MyMenuItem(auditProgramRouteDisplayName,AuditProgramPageRoute,),
  MyMenuItem(engagementRouteDisplayName,AuditEngamentPageRoute),
  MyMenuItem("Plan List", "/PlanList"),
  MyMenuItem("New PLan", "/addPlan"),

  MyMenuItem(authenticationRouteDisplayName,AuthenticationPageRoute),
];


List<MyMenuItem> user=[
  MyMenuItem(dashBordRouteDisplayName,dashBord),
  MyMenuItem(annualPlanRouteDisplayName,annualPlan),
  MyMenuItem(auditProgramRouteDisplayName,AuditProgramPageRoute,),
  MyMenuItem(engagementRouteDisplayName,AuditEngamentPageRoute),
  MyMenuItem("Plan List", "/PlanList"),
  MyMenuItem("New PLan", "/addPlan"),


  MyMenuItem(authenticationRouteDisplayName,AuthenticationPageRoute),
];



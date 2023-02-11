// //1393hawa451313
// class AuditPlanModel {
//  late  List<AuditPlan> _auditPlan;
//  List<AuditPlan> get auditPlan=>_auditPlan;
//
//   AuditPlanModel({required auditPlan});
//   AuditPlanModel.fromJson(Map<String, dynamic> json) {
//     if (json['audit_plan'] != null) {
//       _auditPlan = <AuditPlan>[];
//       json['audit_plan'].forEach((v) {
//         auditPlan!.add(new AuditPlan.fromJson(v));
//       });
//     }
//   }
//
//   // Map<String, dynamic> toJson() {
//   //   final Map<String, dynamic> data = new Map<String, dynamic>();
//   //   if (this.auditPlan != null) {
//   //     data['audit_plan'] = this.auditPlan!.map((v) => v.toJson()).toList();
//   //   }
//   //   return data;
//   // }
// }
//
// class AuditPlan {
//   int? id;
//   int? auditSubject;
//   int? auditees;
//   int? teamId;
//   int? auditType;
//   String? auditYear;
//   int? riskScore;
//   String? riskLevel;
//   String? planStartDate;
//   String? planEndDate;
//   int? quarterP;
//   int? monthP;
//   String? rectStatus;
//   int? rectificationPercentage;
//   int? auditStatus;
//
//   AuditPlan(
//       {this.id,
//         this.auditSubject,
//         this.auditees,
//         this.teamId,
//         this.auditType,
//         this.auditYear,
//         this.riskScore,
//         this.riskLevel,
//         this.planStartDate,
//         this.planEndDate,
//         this.quarterP,
//         this.monthP,
//         this.rectStatus,
//         this.rectificationPercentage,
//         this.auditStatus});
//
//   AuditPlan.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     auditSubject = json['audit_subject'];
//     auditees = json['auditees'];
//     teamId = json['team_id'];
//     auditType = json['audit_type'];
//     auditYear = json['audit_year'];
//     riskScore = json['risk_score'];
//     riskLevel = json['risk_level'];
//     planStartDate = json['plan_start_date'];
//     planEndDate = json['plan_end_date'];
//     quarterP = json['quarter_p'];
//     monthP = json['month_p'];
//     rectStatus = json['rect_status'];
//     rectificationPercentage = json['rectification_percentage'];
//     auditStatus = json['audit_status'];
//   }
//
//   // Map<String, dynamic> toJson() {
//   //   final Map<String, dynamic> data = new Map<String, dynamic>();
//   //   data['id'] = this.id;
//   //   data['audit_subject'] = this.auditSubject;
//   //   data['auditees'] = this.auditees;
//   //   data['team_id'] = this.teamId;
//   //   data['audit_type'] = this.auditType;
//   //   data['audit_year'] = this.auditYear;
//   //   data['risk_score'] = this.riskScore;
//   //   data['risk_level'] = this.riskLevel;
//   //   data['plan_start_date'] = this.planStartDate;
//   //   data['plan_end_date'] = this.planEndDate;
//   //   data['quarter_p'] = this.quarterP;
//   //   data['month_p'] = this.monthP;
//   //   data['rect_status'] = this.rectStatus;
//   //   data['rectification_percentage'] = this.rectificationPercentage;
//   //   data['audit_status'] = this.auditStatus;
//   //   return data;
//   // }
// }
//

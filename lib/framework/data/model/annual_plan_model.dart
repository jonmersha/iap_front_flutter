class AnnualPlanModel {
 late List<AuditPlan> _auditPlan;
  List<AuditPlan> get auditPlan=>_auditPlan;
  AnnualPlanModel({ required auditPlan});


  AnnualPlanModel.fromJson(Map<String, dynamic> json) {
    if (json['audit_plan'] != null) {
      _auditPlan = <AuditPlan>[];
      json['audit_plan'].forEach((v) {
        _auditPlan.add(new AuditPlan.fromJson(v));
      });
    }
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   if (this._auditPlan != null) {
  //     data['audit_plan'] = this._auditPlan!.map((v) => v.toJson()).toList();
  //   }
  //   return data;
  // }
}

class AuditPlan {
  int? planID;
  String? planStartDate;
  String? planEndDate;
  String? auditName;
  int? engQuarter;
  int? engmonth;
  int? auditGroup;
  int? overalRiskScore;

  AuditPlan(
      {
        this.planID,
        this.planStartDate,
        this.planEndDate,
        this.auditName,
        this.engQuarter,
        this.engmonth,
        this.auditGroup,
        this.overalRiskScore});

  AuditPlan.fromJson(Map<String, dynamic> json) {
    planID = json['id'];
    planStartDate = json['planStartDate'];
    planEndDate = json['planEndDate'];
    auditName = json['auditName'];
    engQuarter = json['engQuarter'];
    engmonth = json['engmonth'];
    auditGroup = json['auditGroup'];
    overalRiskScore = json['overalRiskScore'];
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['planID'] = this.planID;
  //   data['planStartDate'] = this.planStartDate;
  //   data['planEndDate'] = this.planEndDate;
  //   data['auditName'] = this.auditName;
  //   data['engQuarter'] = this.engQuarter;
  //   data['engmonth'] = this.engmonth;
  //   data['auditGroup'] = this.auditGroup;
  //   data['overalRiskScore'] = this.overalRiskScore;
  //   return data;
  // }
}

class AuditPlanViewModel {
  late List<AuditPlan> _auditPlan;
  List<AuditPlan> get auditPlan=>_auditPlan;

  AuditPlanViewModel({required auditPlan});

  AuditPlanViewModel.fromJson(Map<String, dynamic> json) {
    if (json['audit_plan'] != null) {
      _auditPlan = <AuditPlan>[];
      json['audit_plan'].forEach((v) {
        _auditPlan.add(new AuditPlan.fromJson(v));
      });
    }
  }
}

class AuditPlan {
  int? id;
  String? aName;
  String? organName;
  int? riskScore;
  String? riskLevel;
  String? planStartDate;
  String? planEndDate;
  int? quarterP;
  int? monthP;
  String? rectStatus;
  int? auditStatus;

  AuditPlan(
      {this.id,
        this.aName,
        this.organName,
        this.riskScore,
        this.riskLevel,
        this.planStartDate,
        this.planEndDate,
        this.quarterP,
        this.monthP,
        this.rectStatus,
        this.auditStatus});

  AuditPlan.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    aName = json['a_name'];
    organName = json['organ_name'];
    riskScore = json['risk_score'];
    riskLevel = json['risk_level'];
    planStartDate = json['plan_start_date'];
    planEndDate = json['plan_end_date'];
    quarterP = json['quarter_p'];
    monthP = json['month_p'];
    rectStatus = json['rect_status'];
    auditStatus = json['audit_status'];
  }
}

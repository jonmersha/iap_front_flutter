class AuditYear {
 late List<Data> _data;
  List<Data>get data=>_data;

  AuditYear({required data});

  AuditYear.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      _data = <Data>[];
      json['data'].forEach((v) {
        _data!.add(new Data.fromJson(v));
      });
    }
  }


}

class Data {
  int? id;
  String? name;
  String? planStartDate;
  String? planEndDate;
  int? curent;

  Data({this.id, this.name, this.planStartDate, this.planEndDate, this.curent});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    planStartDate = json['plan_start_date'];
    planEndDate = json['plan_end_date'];
    curent = json['curent'];
  }


}

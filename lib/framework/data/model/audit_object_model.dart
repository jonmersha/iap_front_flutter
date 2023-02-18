class AuditObject {
  late List<Data> _data;
  List<Data>get data=>_data;

  AuditObject({required data});

  AuditObject.fromJson(Map<String, dynamic> json) {
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
  int? auditCat;
  String? name;
  String? description;

  Data({this.id, this.auditCat, this.name, this.description});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    auditCat = json['audit_cat'];
    name = json['name'];
    description = json['description'];
  }
}

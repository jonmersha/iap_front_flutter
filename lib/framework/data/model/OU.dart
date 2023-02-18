class OU {
  late List<Data> _data;
  List<Data>get data=> _data;

  OU({required data});

  OU.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      _data = <Data>[];
      json['data'].forEach((v) {
        _data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? name;
  int? organLevel;
  int? parentOu;
  int? organType;
  int? ouLeader;

  Data(
      {this.id,
        this.name,
        this.organLevel,
        this.parentOu,
        this.organType,
        this.ouLeader});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    organLevel = json['organ_level'];
    parentOu = json['parent_ou'];
    organType = json['organ_type'];
    ouLeader = json['ou_leader'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['organ_level'] = this.organLevel;
    data['parent_ou'] = this.parentOu;
    data['organ_type'] = this.organType;
    data['ou_leader'] = this.ouLeader;
    return data;
  }
}

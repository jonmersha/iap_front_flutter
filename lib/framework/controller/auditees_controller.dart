import 'package:get/get.dart';
import 'package:iap/framework/controller/repositories.dart';
import 'package:iap/framework/data/model/audit_object_model.dart';


class AuditeesController extends GetxController{

  final Repositories repositories;
  AuditeesController({required this.repositories});

  List<dynamic> _data=[];
  List<dynamic> get data => _data;

  bool _isLoaded = false;
  bool get isLoaded=>_isLoaded;

  Future<void> getList({required String path}) async{
    Response response=await repositories.getList(path: path);
    //print(response.body);

    if(response.statusCode==200){
      _data=[];
      _data.addAll(AuditObject.fromJson(response.body).data);//should be more generic
      _isLoaded=true;
      update();
      print(_data.length);
    }
    else{
      print(response.statusCode);
    }
  }
  Future<void> addAnnualPlan(dynamic body ) async{
    Response response=await repositories.add(body);
    if(response.statusCode==200){
      print(response.body);
      update();
    }
    else{
      print(" this is response code ${response.statusCode}");
    }
  }}
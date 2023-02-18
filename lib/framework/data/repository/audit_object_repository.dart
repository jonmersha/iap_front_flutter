import 'package:get/get.dart';
import 'package:iap/constants/url.dart';
import 'package:iap/framework/data/api/api_client.dart';

class AuditObjectRepository extends GetxService{

  final ApIClient  apIClient;
  AuditObjectRepository({required this.apIClient});


  Future<Response> getAuditObjecs() async{
    return await apIClient.getData(AppConstants.GET_AUDIT_OBJECT);

  }

  Future<Response> addAnnualPlan(dynamic body) async{
    return await apIClient.postData(AppConstants.GET_PLAN,body);
  }


}
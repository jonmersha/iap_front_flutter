import 'package:get/get.dart';
import 'package:iap/constants/url.dart';
import 'package:iap/framework/data/api/api_client.dart';

class AuditeesRepository extends GetxService{

  final ApIClient  apIClient;
  AuditeesRepository({required this.apIClient});


  Future<Response> getAudites() async{
    return await apIClient.getData(AppConstants.GET_OU);

  }

  //
  // Future<Response> addAuditees(dynamic body) async{
  //   return await apIClient.postData(AppConstants.GET_PLAN,body);
  // }


}
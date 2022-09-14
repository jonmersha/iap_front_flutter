import 'package:get/get.dart';
import 'package:iap/framework/data/api/api_client.dart';
import 'package:iap/utils/app_constants.dart';

class AnnualPlanRepo extends GetxService{
  final ApIClient  apIClient;

  AnnualPlanRepo({required this.apIClient});
  Future<Response> getAnnualPlanList() async{
    return await apIClient.getData(AppConstants.GET_PLAN);
  }
  Future<Response> addAnnualPlan(dynamic body) async{
    return await apIClient.postData(AppConstants.GET_PLAN,body);
  }

}
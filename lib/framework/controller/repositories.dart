import 'package:get/get.dart';
import 'package:iap/framework/data/api/api_client.dart';
import 'package:iap/constants/url.dart';

class Repositories extends GetxService{
  final ApIClient  apIClient;
  Repositories({required this.apIClient});

  Future<Response> getList({required String path}) async{
    return await apIClient.getData(path);
  }

  Future<Response> add(dynamic body) async{
    return await apIClient.postData(AppConstants.GET_PLAN,body);
  }
}
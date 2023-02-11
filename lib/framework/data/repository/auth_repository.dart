import 'package:get/get.dart';

import '../../../constants/url.dart';
import '../api/api_client.dart';

class AuthRepository extends GetxService{
  final ApIClient  apIClient;
  AuthRepository({required this.apIClient});
  Future<Response> login(dynamic userInfo) async{
    return await apIClient.getUser(AppConstants.GET_USER,userInfo);
  }

}
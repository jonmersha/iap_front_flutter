import 'package:get/get.dart';
import 'package:iap/framework/data/repository/auth_repository.dart';

class AuthController extends GetxController{
  final AuthRepository authRepository;
  final bool _isLoaded = false;
  bool get isLoaded=>_isLoaded;

  AuthController({required this.authRepository});

  Future<void> login(dynamic body ) async{
    Response response=await authRepository.login(body);
    if(response.statusCode==200){
      update();
    }
    else{
      print(response.statusCode);
    }
  }

}
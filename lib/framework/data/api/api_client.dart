import 'package:get/get.dart';

class ApIClient extends GetConnect implements GetxService{
  late String token;
  final String appBaseUrl;
  late Map<String,String> _mainHeaders;
  ApIClient({required this.appBaseUrl}){
    baseUrl=appBaseUrl;
    token="";
    timeout=Duration(seconds: 30);
    _mainHeaders={
      'Content-type':'application/json; charset=UTF-8',
      'Authorization':'Bearer $token',
    };
  }

  Future<Response> getData(String uri) async {
    try{
      print(uri);
     Response response= await get(uri);
     return response;
    }catch(e){
      return Response(statusCode: 1,statusText: e.toString());
    }

  }

  Future<Response> postData(String uri,dynamic body) async {
    try{
     Response response= await post(uri,body);
     //print(response);
     return response;
    }catch(e){
      return Response(statusCode: 1,statusText: e.toString());
    }

  }

  Future<Response> getUser(String uri,dynamic body) async {
    try{
      Response response= await post(uri,body);
     // print(response);
      return response;
    }catch(e){
      return Response(statusCode: 1,statusText: e.toString());
    }
  }
}

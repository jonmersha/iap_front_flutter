import 'package:get/get.dart';
import 'package:iap/framework/data/model/plan_view_model.dart';
import 'package:iap/framework/data/repository/annual_plan_repository.dart';



class AnnualPlanController extends GetxController{

  final AnnualPlanRepo annualPlanRepo;
  AnnualPlanController({required this.annualPlanRepo});


  List<dynamic> _annualPlanList=[];
  List<dynamic> get annualPLanLis=>_annualPlanList;

  bool _isLoaded = false;
  bool get isLoaded=>_isLoaded;

  Future<void> getAnnualPlanList() async{

    Response response=await annualPlanRepo.getAnnualPlanList();

    if(response.statusCode==200){
      _annualPlanList=[];
      _annualPlanList.addAll(AuditPlanViewModel.fromJson(response.body).auditPlan);
      _isLoaded=true;
      update();
    }
    else{
      print(response.statusCode);
    }
  }
  Future<void> addAnnualPlan(dynamic body ) async{
    Response response=await annualPlanRepo.addAnnualPlan(body);
    if(response.statusCode==200){
      //print(response.body);
      //Navigate to Audit Detail Part


      update();
    }
    else{
      print(" this is resposnse code ${response.statusCode}");
    }
  }
}


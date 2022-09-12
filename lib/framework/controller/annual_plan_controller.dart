import 'package:get/get.dart';
import 'package:iap/framework/data/repository/annual_plan_repository.dart';
import 'package:iap/framework/model/annual_plan_model.dart';


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
      _annualPlanList.addAll(AnnualPlanModel.fromJson(response.body).auditPlan);
      _isLoaded=true;
      update();
    }
    else{
      print(response.statusCode);
    }
  }
}

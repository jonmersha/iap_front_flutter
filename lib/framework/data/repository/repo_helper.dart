import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iap/framework/controller/annual_plan_controller.dart';
import 'package:iap/framework/controller/audit_object_controller.dart';
import 'package:iap/framework/controller/audit_year_controler.dart';
import 'package:iap/framework/controller/auditees_controller.dart';
import 'package:iap/framework/controller/repositories.dart';
import 'package:iap/framework/controller/risk_levele_controller.dart';
import 'package:iap/framework/data/repository/annual_plan_repository.dart';
import 'package:iap/constants/url.dart';
import 'package:iap/framework/data/repository/audit_object_repository.dart';
import 'package:iap/framework/page/helper/menu/controllers.dart';
import '../../controller/auth_controller.dart';
import '../api/api_client.dart';
import 'auth_repository.dart';

Future<void> init() async {

  Get.lazyPut(()=>ApIClient(appBaseUrl: AppConstants.BASE_URL));
  Get.lazyPut(()=>Repositories(apIClient: Get.find()));

  //Anual Plan
  Get.lazyPut(()=>AnnualPlanController(annualPlanRepo: Get.find()));
  Get.lazyPut(()=>AnnualPlanRepo(apIClient: Get.find()));

  //Audit Object
  //Get.lazyPut(()=>AuditObjectController(auditObjectRepository: Get.find()));
  Get.lazyPut(()=>AuditObjectRepository(apIClient: Get.find()));


  //Anual Plan
  Get.lazyPut(()=>AuthController(authRepository: Get.find()));
 Get.lazyPut(()=>AuthRepository(apIClient: Get.find()));

  //Audit Object
  Get.lazyPut(()=>AuditObjectController(repositories: Get.find()));
  Get.lazyPut(()=>AuditeesController(repositories: Get.find()));
  Get.lazyPut(()=>RiskLevelController(repositories: Get.find()));
  Get.lazyPut(()=>AuditYearController(repositories: Get.find()));


}
navigateTo(Widget widget){
  Get.back();
  navigationController.navigationWidget(widget);
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iap/framework/controller/annual_plan_controller.dart';
import 'package:iap/framework/data/repository/annual_plan_repository.dart';
import 'package:iap/constants/url.dart';
import 'package:iap/framework/page/helper/menu/controllers.dart';
import '../../controller/auth_controller.dart';
import '../api/api_client.dart';
import 'auth_repository.dart';

Future<void> init() async {

  Get.lazyPut(()=>ApIClient(appBaseUrl: AppConstants.BASE_URL));
  //Anual Plan
  Get.lazyPut(()=>AnnualPlanController(annualPlanRepo: Get.find()));
  Get.lazyPut(()=>AnnualPlanRepo(apIClient: Get.find()));

  //Anual Plan
  Get.lazyPut(()=>AuthController(authRepository: Get.find()));
  Get.lazyPut(()=>AuthRepository(apIClient: Get.find()));
}
navigateTo(Widget widget){
  Get.back();
  navigationController.navigationWidget(widget);
}
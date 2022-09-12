import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iap/framework/controller/annual_plan_controller.dart';
import 'package:iap/framework/data/repository/annual_plan_repository.dart';
import 'package:iap/utils/app_constants.dart';
import '../data/api/api_client.dart';
Future<void> init() async {

  Get.lazyPut(()=>ApIClient(appBaseUrl: AppConstants.BASE_URL));
  Get.lazyPut(()=>AnnualPlanController(annualPlanRepo: Get.find()));
  Get.lazyPut(()=>AnnualPlanRepo(apIClient: Get.find()));

}
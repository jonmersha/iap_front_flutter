import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController{
  static NavigationController instance=Get.find();
  final GlobalKey<NavigatorState> navigationKey=GlobalKey();

  Future<dynamic> navigationTo(String routeName){
    return navigationKey.currentState!.pushNamed(routeName);
  }


  Future navigationWidget(Widget widgets){
    return navigationKey.currentState!.push(MaterialPageRoute(builder: (context)=>widgets));
  }
  goBack()=>navigationKey.currentState!.pop();

}
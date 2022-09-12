import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iap/routing/routes.dart';


class MenuController extends GetxController{
  static MenuController instance=Get.find();
  var activeItem=dashBord.obs;
  var hoverItem="".obs;
  changeActiveItemTo(String itemName ){
    activeItem.value=itemName;
  }
  onHover(String itemName){
    if(!isActive(itemName)) hoverItem.value=itemName;

  }

  isActive(String itemName) =>activeItem.value==itemName;
  isHovering(String itemName) =>hoverItem.value==itemName;

  Widget returnIconFor(String itemName){
    switch(itemName){
      case dashBord:
        return _customIcon(Icons.trending_down, itemName);
        case anualPlan:
        return _customIcon(Icons.trending_down, itemName);
        case AuditProgramPageRoute:
        return _customIcon(Icons.trending_down, itemName);
        case EngagementPageRoute:
        return _customIcon(Icons.trending_down, itemName);
      default:
        return _customIcon(Icons.trending_flat, itemName);
    }
  }
  Widget _customIcon(IconData icon,String itemName){
    if(isActive(itemName)) return Icon(icon,size:12, color: Colors.blue,);
    return Icon(icon,color:isHovering(itemName)?Colors.blue:Colors.white);
  }


}
import 'package:flutter/material.dart';
import 'package:iap/framework/routing/router.dart';
import 'package:iap/framework/routing/routes.dart';

import 'menu/controllers.dart';



Navigator localNavigator() => Navigator(
  key:navigationController.navigationKey,
  initialRoute:dashBord,
  onGenerateRoute: generateRoute,
);
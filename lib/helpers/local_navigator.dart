import 'package:flutter/material.dart';
import 'package:iap/routing/router.dart';
import 'package:iap/routing/routes.dart';

import '../menu/controllers.dart';

Navigator localNavigator() => Navigator(
  key:navigationController.navigationKey,
  initialRoute:dashBord,
  onGenerateRoute: generateRoute,
);
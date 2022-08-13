import 'package:app_peluqueria/src/routes/constant_route.dart';
import 'package:flutter/material.dart';

import '../pages/home_page.dart';

Map<String, Widget Function(BuildContext)> routes = {
  RouteNames.home.toString(): (_) => HomePage(),
};

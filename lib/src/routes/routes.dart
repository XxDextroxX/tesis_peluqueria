import 'package:app_peluqueria/src/pages/reset_password.dart';
import 'package:app_peluqueria/src/routes/constant_route.dart';
import 'package:flutter/material.dart';

import '../pages/home_page.dart';
import '../pages/login_page.dart';
import '../pages/register_page.dart';

Map<String, Widget Function(BuildContext)> routes = {
  RouteNames.home.toString(): (_) => HomePage(),
  RouteNames.login.toString(): (_) => LoginPage(),
  RouteNames.register.toString(): (_) => RegisterPage(),
  RouteNames.resetPassword.toString(): (_) => ResetPassword(),
};

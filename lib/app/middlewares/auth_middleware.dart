import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todolist_flutter_getx/app/modules/auth/services/auth_service.dart';
import 'package:todolist_flutter_getx/app/routes/app_pages.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    print('redirect: $route');
    if (route == '/login') {
      if (AuthService.to.isLogin) {
        return RouteSettings(name: Routes.home);
      }
    } else {
      if (!AuthService.to.isLogin) {
        return RouteSettings(name: Routes.login);
      }
    }

    return null;
  }

  @override
  List<Bindings>? onBindingsStart(List<Bindings>? bindings) {
    return bindings;
  }
}

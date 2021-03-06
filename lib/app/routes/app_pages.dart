import 'package:get/get.dart';

import 'package:todolist_flutter_getx/app/modules/home/bindings/home_binding.dart';
import 'package:todolist_flutter_getx/app/modules/home/views/home_view.dart';
import 'package:todolist_flutter_getx/app/modules/login/bindings/login_binding.dart';
import 'package:todolist_flutter_getx/app/modules/login/views/login_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.login;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.login,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
  ];
}

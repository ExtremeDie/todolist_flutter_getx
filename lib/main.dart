import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todolist_flutter_getx/app/modules/home/views/home_view.dart';
import 'package:todolist_flutter_getx/app/modules/login/views/login_view.dart';

import 'app/modules/auth/services/auth_service.dart';
import 'app/modules/shared/services/global_service.dart';
import 'app/routes/app_pages.dart';
import 'package:sizer/sizer.dart';

void main() async {
  await GetStorage.init();
  await initServices();
  runApp(MyApp());
}

Future<void> initServices() async {
  await Get.putAsync(() async => GlobalService());
  await Get.putAsync(() async => AuthService());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
        // designSize: Size(1080, 1920),
        builder: (context, orien, type) {
      return GetMaterialApp(
        title: 'todolist_flutter_getx',
        initialRoute: AppPages.initial,
        // home: HomeView(),
        getPages: AppPages.routes,
        debugShowCheckedModeBanner: false,
        theme: FlexColorScheme.light(
          scheme: FlexScheme.deepPurple,
          appBarStyle: FlexAppBarStyle.primary,
        ).toTheme,
        darkTheme: FlexColorScheme.dark(
          scheme: FlexScheme.deepPurple,
          appBarStyle: FlexAppBarStyle.primary,
        ).toTheme,
        themeMode: ThemeMode.light,
      );
    });
  }
}

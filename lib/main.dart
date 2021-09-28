import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/modules/shared/services/global_service.dart';
import 'app/routes/app_pages.dart';

void main() async {
  await GetStorage.init();
  await initServices();
  runApp(MyApp());
}

Future<void> initServices() async {
  await Get.putAsync(() async => GlobalService());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'todolist_flutter_getx',
      initialRoute: AppPages.initial,
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
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:todolist_flutter_getx/app/modules/login/views/login_view.dart';
import 'package:todolist_flutter_getx/app/modules/shared/services/global_service.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/home_controller.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('todolist_flutter_getx'),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () async {
                const link =
                    "https://github.com/ExtremeDie/todolist_flutter_getx";
                // html.window.open(
                //     'https://github.com/ExtremeDie/todolist_flutter_getx',
                //     'new tab');

                await canLaunch(link)
                    ? await launch(link)
                    : throw 'Could not launch $link';
              },
              icon: Icon(FontAwesome5.github)),
          Obx(() => IconButton(
              onPressed: () {
                GlobalService.to.isDarkMode.value = !Get.isDarkMode;
                Get.changeThemeMode(
                    Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
              },
              icon: Icon(GlobalService.to.isDarkMode.value
                  ? Icons.light_mode_rounded
                  : Icons.dark_mode_rounded))),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'HomeView is working',
              style: TextStyle(fontSize: 20),
            ),
            IconButton(
                onPressed: () {
                  Get.toNamed('/login');
                },
                icon: Icon(Icons.ac_unit))
          ],
        ),
      ),
    );
  }
}

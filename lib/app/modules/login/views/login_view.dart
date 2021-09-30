import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

import 'package:get/get.dart';
import 'package:todolist_flutter_getx/app/modules/shared/services/global_service.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

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
        child: Text(
          'LoginView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

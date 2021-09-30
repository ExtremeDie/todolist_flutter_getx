import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

import 'package:get/get.dart';
import 'package:todolist_flutter_getx/app/modules/shared/constants.dart';
import 'package:todolist_flutter_getx/app/modules/shared/services/global_service.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/login_controller.dart';
import 'package:sizer/sizer.dart';

class LoginView extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<LoginView> {
  PageController _pageController = PageController();
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    print('SizerUtil.deviceType: ${SizerUtil.deviceType}');
    print('7.w: ${7.w}');
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
        child: Container(
          // width: MediaQuery.of(context).size.width * 60,
          width: 80.w,
          padding: EdgeInsets.all(appPadding_16),
          decoration:
              BoxDecoration(borderRadius: appBorderRadius, color: Colors.green),
          child: Text('testtt'),
        ),
      ),
    );
  }

  getColor() {
    return Colors.red;
  }
}

// class LoginView extends StatefulWidget {
//   const LoginView({Key? key}) : super(key: key);

//   @override
//   State<LoginView> createState() => _LoginViewState();
// }

// class _LoginViewState extends State<LoginView> {
//   @override
//   Widget build(BuildContext context) {
//     print('7.h: ${7.h}');
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('todolist_flutter_getx'),
//         centerTitle: false,
//         actions: [
//           IconButton(
//               onPressed: () async {
//                 const link =
//                     "https://github.com/ExtremeDie/todolist_flutter_getx";

//                 await canLaunch(link)
//                     ? await launch(link)
//                     : throw 'Could not launch $link';
//               },
//               icon: Icon(FontAwesome5.github)),
//           Obx(() => IconButton(
//               onPressed: () {
//                 GlobalService.to.isDarkMode.value = !Get.isDarkMode;
//                 Get.changeThemeMode(
//                     Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
//               },
//               icon: Icon(GlobalService.to.isDarkMode.value
//                   ? Icons.light_mode_rounded
//                   : Icons.dark_mode_rounded))),
//         ],
//       ),
//       body: Center(
//         child: Container(
//           width: 80.w,
//           padding: EdgeInsets.all(appPadding_16),
//           decoration:
//               BoxDecoration(borderRadius: appBorderRadius, color: Colors.green),
//           child: Text('test'),
//         ),
//       ),
//     );
//   }
// }

// class LoginView extends GetView<LoginController> {
//   const LoginView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('todolist_flutter_getx'),
//         centerTitle: false,
//         actions: [
//           IconButton(
//               onPressed: () async {
//                 const link =
//                     "https://github.com/ExtremeDie/todolist_flutter_getx";

//                 await canLaunch(link)
//                     ? await launch(link)
//                     : throw 'Could not launch $link';
//               },
//               icon: Icon(FontAwesome5.github)),
//           Obx(() => IconButton(
//               onPressed: () {
//                 GlobalService.to.isDarkMode.value = !Get.isDarkMode;
//                 Get.changeThemeMode(
//                     Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
//               },
//               icon: Icon(GlobalService.to.isDarkMode.value
//                   ? Icons.light_mode_rounded
//                   : Icons.dark_mode_rounded))),
//         ],
//       ),
//       body: Center(
//         child: Container(
//           width: 80.w,
//           padding: EdgeInsets.all(appPadding_16),
//           decoration:
//               BoxDecoration(borderRadius: appBorderRadius, color: Colors.green),
//           child: Text('test'),
//         ),
//       ),
//     );
//   }
// }

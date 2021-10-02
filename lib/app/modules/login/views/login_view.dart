import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

import 'package:get/get.dart';
import 'package:todolist_flutter_getx/app/modules/shared/constants.dart';
import 'package:todolist_flutter_getx/app/modules/shared/services/global_service.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/login_controller.dart';
import 'package:sizer/sizer.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
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
            width: 80.w,
            padding: EdgeInsets.all(appPadding_16),
            decoration: BoxDecoration(
                borderRadius: appBorderRadius, color: Colors.green),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FormBuilder(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      FormBuilderTextField(
                        name: 'email',
                        decoration: InputDecoration(
                          labelText: 'Email',
                        ),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(context),
                          FormBuilderValidators.email(context),
                        ]),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      FormBuilderTextField(
                        name: 'password',
                        decoration: InputDecoration(
                          labelText: 'Password',
                        ),
                        obscureText: true,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(context),
                          FormBuilderValidators.minLength(context, 8),
                        ]),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      FormBuilderCheckbox(
                        name: 'remember',
                        initialValue: false,
                        title: Text('Remember Me'),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  color: Theme.of(context).accentColor,
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    _formKey.currentState!.save();
                    if (_formKey.currentState!.validate()) {
                      print(_formKey.currentState!.value);
                    } else {
                      print('validation failed');
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

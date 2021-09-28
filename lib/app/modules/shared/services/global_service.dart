import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GlobalService extends GetxService {
  static GlobalService to = Get.find<GlobalService>();

  RxBool isDarkMode = false.obs;
}

import 'package:get/get.dart';

class AuthService extends GetxService {
  static AuthService to = Get.find<AuthService>();

  bool get isLogin => false;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}

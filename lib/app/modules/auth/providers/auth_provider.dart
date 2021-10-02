import 'package:get/get.dart';

class AuthProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'https://todolist-express-mongodb.glitch.me/v1/';

    //     httpClient.addAuthenticator((request) async {
    //   final response = await get("http://yourapi/token");
    //   final token = response.body['token'];
    //   // Set the header
    //   request.headers['Authorization'] = "$token";
    //   return request;
    // });
  }
}

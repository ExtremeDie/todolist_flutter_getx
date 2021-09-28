import 'package:get_storage/get_storage.dart';

class Storage {
  static final box = GetStorage();

  static T? read<T>(String key) {
    return box.read(key);
  }

  static Future<void> write(String key, dynamic value) {
    return box.write(key, value);
  }
}

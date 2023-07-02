import 'package:get/get.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class MainMenuController extends GetxController {
  final storage = new FlutterSecureStorage();

  Future<void> clearStorage() async {
    await storage.delete(key: 'name');
    await storage.delete(key: 'token');
    await storage.delete(key: 'email');
    await storage.delete(key: 'id');
    await storage.delete(key: 'isLogin');
  }
}

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();
  print("Handling a background message: ${message.messageId}");
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    badge: true,
    sound: true,
  );
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    if (message.notification != null) {
      RemoteNotification notification = message.notification!;
      Get.defaultDialog(
        title: notification.title!,
        content: Text(notification.body!),
        textConfirm: "OK",
        contentPadding: EdgeInsets.all(10),
        titlePadding: EdgeInsets.all(10),
        confirmTextColor: Colors.white,
        onConfirm: () {
          Get.back();
        },
      );
    }
  });

  // Check login status
  final storage = new FlutterSecureStorage();
  String? isLogin = await storage.read(key: 'isLogin');

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute:
          isLogin != null && isLogin == 'true' ? Routes.MAIN_MENU : Routes.HOME,
      getPages: AppPages.routes,
      builder: EasyLoading.init(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

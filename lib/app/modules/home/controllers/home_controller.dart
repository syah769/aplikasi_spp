import 'package:aplikasi_spp/app/routes/app_pages.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  void onTapLogin() {
    Get.toNamed(Routes.LOGIN);
  }
}

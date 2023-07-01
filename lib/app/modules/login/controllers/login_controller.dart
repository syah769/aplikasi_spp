import 'package:aplikasi_spp/app/data/login_provider.dart';
import 'package:aplikasi_spp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LoginController extends GetxController {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  final storage = new FlutterSecureStorage();

  //create sebuah function/method
  void auth() {
    String email = txtEmail.text;
    String password = txtPassword.text;
    if (email.isEmpty || password.isEmpty) {
      Get.snackbar(
        "Error",
        "Email dan Password wajib diisi",
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } else {
      EasyLoading.show();
      var data = {
        "email": email,
        "password": password,
      };
      LoginProvider().auth(data).then((value) async {
        if (value.statusCode == 200) {
          //untuk dapatkan semua body dari reponse body
          var responseBody = value.body;
          //ni kalau nak display/ambik salah satu dalam response body
          var data = responseBody['data'];
          await storage.write(key: 'name', value: data['data']['name']);
          await storage.write(key: 'token', value: data['token']);
          await storage.write(key: 'email', value: data['data']['email']);
          await storage.write(key: 'id', value: data['data']['id'].toString());
          Get.offAllNamed(Routes.MAIN_MENU);
        } else {
          Get.snackbar(
            "Error",
            "Login Gagal",
            backgroundColor: Colors.red,
            colorText: Colors.white,
          );
        }
        EasyLoading.dismiss();
      });
    }
  }
}

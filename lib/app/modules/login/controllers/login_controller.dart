import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

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
      Get.snackbar(
        "Success",
        "Login Berhasil",
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    }
  }
}

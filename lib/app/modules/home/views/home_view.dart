// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:aplikasi_spp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.only(
            left: 3,
            top: 3,
            bottom: 3,
          ),
          child: Image.asset(
            "images/logo.png",
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'SPP ONLINE',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                Image.asset("images/study.png"),
                Text(
                  "SPP Online",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Bayar dan Monitoring \nWang Sekolah Anak Anda dengan Mudah",
                  style: TextStyle(
                    color: Colors.black54,
                    fontFamily: 'Roboto',
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => controller.onTapLogin(),
                  child: Text(
                    " L O G I N",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 7, 14, 142),
                    fixedSize: Size(Get.width - 70, 40),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    " S I G N U P",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: Size(Get.width - 70, 40),
                    side: const BorderSide(
                      width: 2,
                      color: Color.fromARGB(255, 7, 14, 142),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

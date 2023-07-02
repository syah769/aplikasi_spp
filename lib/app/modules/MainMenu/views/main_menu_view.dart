// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:aplikasi_spp/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../controllers/main_menu_controller.dart';

class MainMenuView extends GetView<MainMenuController> {
  const MainMenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var buttonStyle = ElevatedButton.styleFrom(
      backgroundColor: Color.fromARGB(255, 7, 14, 142),
      fixedSize: Size(Get.width - 70, 40),
    );
    var textStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
    return FutureBuilder(
      future: controller.storage.read(key: "name"),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
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
                      SizedBox(height: 80),
                      Text(
                        "SMKAY",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          " UPDATE PROFILE",
                          style: textStyle,
                        ),
                        style: buttonStyle,
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          " INVOICE BELUM DIBAYAR",
                          style: textStyle,
                        ),
                        style: buttonStyle,
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          " DATA BUDI",
                          style: textStyle,
                        ),
                        style: buttonStyle,
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () async {
                          await controller.clearStorage();
                          Get.offAllNamed(Routes.HOME);
                        },
                        child: Text(
                          " LOGOUT",
                          style: textStyle,
                        ),
                        style: buttonStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        } else if (snapshot.hasError) {
          return Text("Error: ${snapshot.error}");
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}

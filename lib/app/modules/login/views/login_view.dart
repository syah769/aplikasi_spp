// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Assalamualaikum, ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Welcome, Please login here",
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 25),
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: "Password",
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                " L O G I N",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 7, 14, 142),
                fixedSize: Size(Get.width, 50),
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    height: 2,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  " Or ",
                  style: TextStyle(color: Colors.black54),
                ),
                Expanded(
                  child: Divider(
                    height: 5,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  Text(
                    "Login with media social",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("images/logo.png", width: 30),
                      SizedBox(height: 30),
                      Image.asset("images/logo.png", width: 30),
                      SizedBox(height: 30),
                      Image.asset("images/logo.png", width: 30),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

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
          padding: const EdgeInsets.only(
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
        title: const Text(
          'SPP ONLINE',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: const Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

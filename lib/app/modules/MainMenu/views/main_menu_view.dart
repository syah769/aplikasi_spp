// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sp_util/sp_util.dart';

import '../controllers/main_menu_controller.dart';

class MainMenuView extends GetView<MainMenuController> {
  const MainMenuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halo, ${SpUtil.getString("name")}'),
      ),
      body: Center(
        child: Text(
          'MainMenuView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

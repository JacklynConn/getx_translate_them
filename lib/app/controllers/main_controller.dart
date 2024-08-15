import 'package:app_use_getx/app/screens/app_settings/app_setting_screen.dart';
import 'package:app_use_getx/app/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MainController extends GetxController {

  int currentIndex = 0;

  List<Widget> lstScreens = [
    const HomeScreen(),
    SettingScreen(),
  ];

  void bottomNavigationTap(int index) {
    currentIndex = index;
    update();// This is important to update the UI
  }
}

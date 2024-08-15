import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService extends GetxService{
  final _themeKey = 'isDarkMode';
  final _isDark = false;

  ThemeData get theme => _isDark ? ThemeData.dark() : ThemeData.light();

  @override
  void onInit() {
    GetStorage.init().then((value) {
     var isDark = GetStorage().read(_themeKey) ?? _isDark;
     print('isDark: $isDark');
      Get.changeTheme(isDark ? ThemeData.dark() : ThemeData.light());
    });
    super.onInit();
  }
  void changeTheme() {
    Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
    GetStorage().write(_themeKey, !Get.isDarkMode);
    print('isDark: ${!Get.isDarkMode}');
  }
}
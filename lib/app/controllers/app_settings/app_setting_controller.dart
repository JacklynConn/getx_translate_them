import 'package:app_use_getx/app/services/theme_service.dart';
import 'package:get/get.dart';

class AppSettingController extends GetxController {
  var isDarkMode = Get.isDarkMode;
  final themeService = Get.find<ThemeService>();

  void changeTheme() {
    themeService.changeTheme();
    isDarkMode = !isDarkMode;
    update();
  }
}

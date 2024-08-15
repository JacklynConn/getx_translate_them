import 'package:app_use_getx/app/controllers/app_settings/app_setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({super.key});
  final _controller = Get.put(AppSettingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Language'.tr),
            subtitle: const Text(
              'English',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Get.toNamed("language");
            },
          ),
          GetBuilder<AppSettingController>(
            builder: (_) {
              return ListTile(
                title: const Text('Dark Mode'),
                trailing: Switch(
                  value: _controller.isDarkMode,
                  onChanged: (value) {
                    _controller.changeTheme();
                  },
                ),
              );
            }
          )
        ],
      ),
    );
  }
}

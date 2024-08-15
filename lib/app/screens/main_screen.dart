import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/main_controller.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final _controller = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (_) {
        return Scaffold(
          body: IndexedStack(
            index: _controller.currentIndex,
            children: _controller.lstScreens,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _controller.currentIndex,
            onTap: _controller.bottomNavigationTap,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
          ),
        );
      },
    );
  }
}

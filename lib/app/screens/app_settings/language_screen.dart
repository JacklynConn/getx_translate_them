import 'package:app_use_getx/app/services/translation_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language'.tr),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                TranslationService().changeLanguage('en_US');
              },
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/english.png',
                    width: 30,
                    height: 30,
                  ),
                  const SizedBox(
                    width: 10,

                  ),
                  const Text('English'),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                TranslationService().changeLanguage('km_KH');
              },
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/khmer.png',
                    width: 30,
                    height: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('ភាសាខ្មែរ'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

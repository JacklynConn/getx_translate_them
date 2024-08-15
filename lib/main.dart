import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'app/screens/app_settings/language_screen.dart';
import 'app/screens/main_screen.dart';
import 'app/services/theme_service.dart';
import 'app/services/translation_service.dart';
import 'app/translations/translation.dart';

void main() async{
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final service = Get.put(TranslationService());
  final theme = Get.put(ThemeService());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: TranslationService().currentLanguage == 'km_KH'
          ? const Locale('km', 'KH')
          : const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      translations: AppTranslation(),
      // theme: ThemeData.dark(),
      // darkTheme: ThemeData.dark(),
      routes: {
        '/': (context) => MainScreen(),
      },
      getPages: [
        GetPage(name: "/", page: () => MainScreen()),
        GetPage(
          name: '/language',
          page: () => const LanguageScreen(),
        ),
      ],
      // initialRoute: '/',
    );
  }
}

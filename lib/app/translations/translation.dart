import 'package:get/get.dart';

class AppTranslation extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'language': 'Language',
      'dark_mode': 'Dark Mode',
    },
    'km_KH':{
      'Language': 'ភាសា',
      'dark_mode': 'រចនាប័ទ្មងងឹត',
    }
  };
}


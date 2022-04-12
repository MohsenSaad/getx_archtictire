import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getx_archticture/services/app_services/ilocalization_service.dart';

class LocalizationService extends Translations implements ILocalizationService{
  LocalizationService() {
    loadTranslationsFiles();
  }

  static Map<String, String> en = {"x": "x"};
  static Map<String, String> ar = {"x": "x"};
  // Default locale
  static final locale = Locale('ar', 'AR');

  // fallbackLocale saves the day when the locale gets in trouble
  static final fallbackLocale = Locale('en', 'US');
  static final langs = [
    'English',
    'Arabic',
  ];

  Future<void> loadTranslationsFiles() async {
    try {
      en = new Map<String, String>.from(
          json.decode(await rootBundle.loadString('lib/i18n/en.json')));
      ar = new Map<String, String>.from(
          json.decode(await rootBundle.loadString('lib/i18n/ar.json')));
    } catch (ex) {
      print(ex);
    }
  }

  static final locales = [
    Locale('en', 'US'),
    Locale('ar', 'AR'),
  ];

  // Keys and their translations
  // Translations are separated maps in `lang` file
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en,
        'ar_AR': ar,
      };

  // Gets locale from language, and updates the locale
  Future<void> changeLocale(String lang) async {
    final locale = getLocaleFromLanguage(lang);
    Get.updateLocale(locale);
  }

  String getCurrentLocal(){
    return Get.locale.toString();
  }

  // Finds language in `langs` list and returns it as Locale
  Locale getLocaleFromLanguage(String lang) {
    for (int i = 0; i < langs.length; i++) {
      if (lang == langs[i]) return locales[i];
    }
    return Get.locale;
  }

}

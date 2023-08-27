import 'package:flutter/material.dart';

extension LocalizationExt on BuildContext {
  String localize(String value) {
    final code = AppLocalization.of(this).locale.languageCode;
    final database = AppLocalization._localizedValues;
    if (database.containsKey(code)) {
      return database[code]?[value] ?? '-';
    } else {
      return database['en']?[value] ?? '-';
    }
  }
}

class AppLocalization {
  final Locale locale;

  const AppLocalization(this.locale);

  static AppLocalization of(BuildContext context) =>
      Localizations.of<AppLocalization>(context, AppLocalization)!;

  static final Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'title': "BMI Calculator",
      'title_history': 'History',
      'label_calculate': "CALCULATOR",
      'label_recalculate': 'RE-CALCULATE',
      'label_male': 'MALE',
      'label_female': 'FEMALE',
      'label_height': 'HEIGHT',
      'label_weight': 'WEIGHT',
      'label_age': 'AGE',
      'label_result': 'YOUR RESULT',
    },
    'vi': {
      'title': "Máy tính BMi",
      'title_history': 'Lịch sử',
      'label_calculate': "TÍNH",
      'label_recalculate': 'TÍNH LẠI',
      'label_male': 'NAM',
      'label_female': 'NỮ',
      'label_height': 'CHIỀU CAO',
      'label_weight': 'CÂN NẶNG',
      'label_age': 'ĐỘ TUỔI',
      'label_result': 'KẾT QUẢ',
    },
  };
}

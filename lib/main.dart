import 'package:bmicalculator/localizations/app_localization.dart';
import 'package:bmicalculator/localizations/localization_delegate.dart';
import 'package:bmicalculator/screens/home_screen.dart';
import 'package:bmicalculator/screens/splash_screen.dart';
import 'package:bmicalculator/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(primaryColor: AppColor.THEME),
      locale: const Locale('vi', 'VN'),
      localizationsDelegates: const [
        AppLocalizationDelegate(),
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale.fromSubtags(languageCode: 'vi'),
        Locale.fromSubtags(languageCode: 'en'),
      ],
      onGenerateTitle: (context) => context.localize('title'),
      home: SplashScreen(),
    );
  }
}

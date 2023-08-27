import 'package:flutter/material.dart';

class AppColor {
  static Color THEME = const Color.fromARGB(255, 37, 0, 75);
  static Color SELECTED_BUTTON = const Color.fromARGB(255, 26, 0, 52);
  static Color UNSELECTED_BUTTON = const Color.fromARGB(255, 62, 54, 70);
}

class AppStyle {
  static TextStyle APP_NAME = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 40,
  );
  static TextStyle CARD_PRIMARY_TEXT_STYLE = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 40,
  );
  static TextStyle CARD_SECONDARY_TEXT_STYLE = const TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.bold,
    fontSize: 10,
  );
}

import 'package:flutter/material.dart';

class AppColors {
  MaterialColor colorCustom = MaterialColor(0xFFFCFCFC, color);

  static const Color appBackgroundColor = Color(0xFFFCFCFC); // background color
  static const Color bgColor = Color(0xFFC4C4C4);
  static const Color circularBgColor = Color(0xFFCCD8CD);
  static const Color searchBgColor = Color(0xFFF1F5F5);

  // buttons
  static const Color btnColor = Color(0xFF2C48D8); // button1 color

  // Text
  static const Color textBlackColor = Color(0xFF000000); // 090909 666666
  static const Color text2Color = Color(0xFF090909);
  static const Color textGreyColor = Color(0xFF666666);
}

Map<int, Color> color = {
  50: const Color(0xFFFEFEFE), // (almost white)
  100: const Color(0xFFFCFCFC), // (the base color)
  200: const Color(0xFFF8F8F8),
  300: const Color(0xFFF5F5F5),
  400: const Color(0xFFF1F1F1),
  500: const Color(0xFFEDEDED),
  600: const Color(0xFFE9E9E9),
  700: const Color(0xFFE5E5E5),
  800: const Color(0xFFE1E1E1),
  900: const Color(0xFFDDDDDD), // 40% darker
};

MaterialColor colorCustom = MaterialColor(0xFFFCFCFC, color);

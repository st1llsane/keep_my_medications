import 'package:flutter/material.dart';

abstract class ThemeColors {
  // Main colors
  static const Color background = Color(0xFFFFFFFF);
  static const Color foreground = Color(0xFF1F2937);
  static const Color foregroundSecondary = Color(0xFF4B5563);
  static const Color primary = Color(0xFF4B90E2);
  static const Color secondary = Color(0xFFE9EAEE);
  static const Color secondaryDark = Color(0xFFD6DADF);

  // Accent colors
  static const Color accent1 = Color(0xFF50C879);
  static const Color accent1Light = Color(0xFFEFF9F1);
  static const Color accent2 = Color(0xFFFFC008);
  static const Color accent2Light = Color(0xFFFFF9EB);
  static const Color accent3 = Color(0xFF9334E9);
  static const Color accent3Light = Color(0xFFFAF5FF);
  static const Color accent4 = Color(0xFFDC2625);
  static const Color accent4Light = Color(0xFFFEF2F2);

  // System colors
  static const Color success = Color(0xFF50C879);

  // Mood colors
  static const Color moodGreat = Color(0xFF4ade80);
  static const Color moodGood = Color(0xFFbef264);
  static const Color okay = Color(0xFFfde047);
  static const Color moodNotOkay = Color(0xFFfb923c);
  static const Color moodBad = Color(0xFFef4444);
}

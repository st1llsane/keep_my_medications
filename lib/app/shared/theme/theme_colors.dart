import 'package:flutter/material.dart';

/// Base class for theme colors
abstract class ThemeColors {
  const ThemeColors();

  // Main colors
  Color get background;
  Color get foreground;
  Color get foregroundSecondary;
  Color get primary;
  Color get secondary;

  // Card
  Color get card;

  // Accent colors
  Color get accent1;
  Color get accent1Light;
  Color get accent2;
  Color get accent2Light;
  Color get accent3;
  Color get accent3Light;
  Color get accent4;
  Color get accent4Light;

  // Border
  Color get border;

  // System colors
  Color get success;

  // Mood colors (same for both themes)
  static const Color moodBad = Color(0xFFef4444);
  static const Color moodNotOkay = Color(0xFFfb923c);
  static const Color moodOkay = Color(0xFFfde047);
  static const Color moodGood = Color(0xFFbef264);
  static const Color moodGreat = Color(0xFF4ade80);
}

/// Light theme colors
class LightThemeColors extends ThemeColors {
  const LightThemeColors();

  @override
  Color get background => const Color(0xFFFFFFFF);

  @override
  Color get foreground => const Color(0xFF1F2937);

  @override
  Color get foregroundSecondary => const Color(0xFF4B5563);

  @override
  Color get primary => const Color(0xFF4B90E2);

  @override
  Color get secondary => const Color(0xFFE9EAEE);

  @override
  Color get card => const Color(0xFFFBF2FC);

  @override
  Color get accent1 => const Color(0xFF50C879);

  @override
  Color get accent1Light => const Color(0xFFEFF9F1);

  @override
  Color get accent2 => const Color(0xFFFFC008);

  @override
  Color get accent2Light => const Color(0xFFFFF9EB);

  @override
  Color get accent3 => const Color(0xFF9334E9);

  @override
  Color get accent3Light => const Color(0xFFFAF5FF);

  @override
  Color get accent4 => const Color(0xFFDC2625);

  @override
  Color get accent4Light => const Color(0xFFFEF2F2);

  @override
  Color get border => const Color(0xFFE9EAEE);

  @override
  Color get success => const Color(0xFF50C879);
}

/// Dark theme colors
class DarkThemeColors extends ThemeColors {
  const DarkThemeColors();

  @override
  Color get background => const Color(0xFF111827);

  @override
  Color get foreground => const Color(0xFFF9FAFB);

  @override
  Color get foregroundSecondary => const Color(0xFF9CA3AF);

  @override
  Color get primary => const Color(0xFF60A5FA);

  @override
  Color get secondary => const Color(0xFF374151);

  @override
  Color get card => const Color(0xFF1F2937);

  @override
  Color get accent1 => const Color(0xFF10B981);

  @override
  Color get accent1Light => const Color(0xFF064E3B);

  @override
  Color get accent2 => const Color(0xFFFBBF24);

  @override
  Color get accent2Light => const Color(0xFF78350F);

  @override
  Color get accent3 => const Color(0xFFA855F7);

  @override
  Color get accent3Light => const Color(0xFF581C87);

  @override
  Color get accent4 => const Color(0xFFEF4444);

  @override
  Color get accent4Light => const Color(0xFF7F1D1D);

  @override
  Color get border => const Color(0xFF374151);

  @override
  Color get success => const Color(0xFF10B981);
}

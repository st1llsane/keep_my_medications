import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keep_my_notes/shared/theme/theme_colors.dart';
import 'package:keep_my_notes/shared/theme/theme_text_styles.dart';

class AppThemeData {
  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      textTheme: const TextTheme(
        bodySmall: ThemeTextStyles.bodyTextS,
        bodyMedium: ThemeTextStyles.bodyTextM,
        bodyLarge: ThemeTextStyles.bodyTextL,
        titleSmall: ThemeTextStyles.headingS,
        titleMedium: ThemeTextStyles.headingM,
        titleLarge: ThemeTextStyles.headingL,
      ),
      colorScheme: const ColorScheme.light(
        primary: Colors.red,
        onPrimary: Colors.white,
        secondary: Colors.red,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        surface: Colors.red,
        onSurface: Colors.white,
      ),
      scaffoldBackgroundColor: ThemeColors.background,
      appBarTheme: const AppBarTheme(
        backgroundColor: ThemeColors.background,
        titleTextStyle: TextStyle(
          color: ThemeColors.foreground,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
      cupertinoOverrideTheme: const CupertinoThemeData(
        barBackgroundColor: ThemeColors.background,
      ),
    );
  }
}

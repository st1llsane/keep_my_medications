import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keep_my_notes/shared/theme/theme_colors.dart';
import 'package:keep_my_notes/shared/theme/theme_text_styles.dart';

class AppThemeData {
  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      textTheme: const TextTheme(
        bodySmall: ThemeTextStyles.bodyTextS,
        bodyMedium: ThemeTextStyles.bodyTextM,
        bodyLarge: ThemeTextStyles.bodyText14,
        titleSmall: ThemeTextStyles.heading20,
        titleMedium: ThemeTextStyles.headingM,
        titleLarge: ThemeTextStyles.heading22,
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
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          textStyle: WidgetStatePropertyAll(ThemeTextStyles.bodyText14),
          foregroundColor: WidgetStatePropertyAll(ThemeColors.foreground),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
      ),
    );
  }
}

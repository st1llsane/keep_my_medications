import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keep_my_notes/app/shared/theme/theme_colors.dart';
import 'package:keep_my_notes/app/shared/theme/theme_text_styles.dart';

class AppThemeData {
  static ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: ThemeColors.background,

      colorScheme: const ColorScheme.light(
        primary: CupertinoColors.systemBlue,
        onPrimary: Colors.white,
        secondary: Colors.red,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        surface: Colors.red,
        onSurface: Colors.white,
      ),

      textTheme: const TextTheme(
        bodySmall: ThemeTextStyles.bodyTextS,
        bodyMedium: ThemeTextStyles.bodyTextM,
        bodyLarge: ThemeTextStyles.bodyText14,
        headlineSmall: ThemeTextStyles.subheading14,
        headlineMedium: ThemeTextStyles.subheading16,
        headlineLarge: ThemeTextStyles.subheading18,
        titleSmall: ThemeTextStyles.heading18,
        titleMedium: ThemeTextStyles.heading20,
        titleLarge: ThemeTextStyles.heading22,
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: ThemeColors.background,
        titleTextStyle: ThemeTextStyles.heading18,
        // actionsIconTheme: IconThemeData(),
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

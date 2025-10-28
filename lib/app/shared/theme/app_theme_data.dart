import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keep_my_notes/app/shared/theme/theme_colors.dart';
import 'package:keep_my_notes/app/shared/theme/theme_text_styles.dart';

class AppThemeData {
  static ThemeData get lightTheme => _buildTheme(
    brightness: Brightness.light,
    colors: const LightThemeColors(),
  );

  static ThemeData get darkTheme =>
      _buildTheme(brightness: Brightness.dark, colors: const DarkThemeColors());

  static ThemeData _buildTheme({
    required Brightness brightness,
    required ThemeColors colors,
  }) {
    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      scaffoldBackgroundColor: colors.background,
      textTheme: TextTheme(
        bodySmall: ThemeTextStyles.bodyTextS(colors.foreground),
        bodyMedium: ThemeTextStyles.bodyTextM(colors.foreground),
        bodyLarge: ThemeTextStyles.bodyText14(colors.foreground),
        headlineSmall: ThemeTextStyles.subheading14(colors.foreground),
        headlineMedium: ThemeTextStyles.subheading16(colors.foreground),
        headlineLarge: ThemeTextStyles.subheading18(colors.foreground),
        titleSmall: ThemeTextStyles.heading18(colors.foreground),
        titleMedium: ThemeTextStyles.heading20(colors.foreground),
        titleLarge: ThemeTextStyles.heading22(colors.foreground),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: colors.background,
        titleTextStyle: ThemeTextStyles.heading18(colors.foreground),
        centerTitle: true,
      ),
      cupertinoOverrideTheme: CupertinoThemeData(
        barBackgroundColor: colors.background,
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          textStyle: WidgetStatePropertyAll(
            ThemeTextStyles.bodyText14(colors.foreground),
          ),
          foregroundColor: WidgetStatePropertyAll(colors.foreground),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
      ),
    );
  }
}

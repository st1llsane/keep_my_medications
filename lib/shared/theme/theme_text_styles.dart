import 'package:flutter/material.dart';
import 'package:keep_my_notes/shared/theme/theme_colors.dart';

abstract class ThemeTextStyles {
  // Body text
  static const TextStyle bodyTextS = TextStyle(
    color: ThemeColors.foreground,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1,
  );
  static const TextStyle bodyTextM = TextStyle(
    color: ThemeColors.foreground,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1,
  );
  static const TextStyle bodyText14 = TextStyle(
    color: ThemeColors.foreground,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1,
  );

  // Subheading
  static const TextStyle subheading14 = TextStyle(
    color: ThemeColors.foreground,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1,
  );
  static const TextStyle subheading16 = TextStyle(
    color: ThemeColors.foreground,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1,
  );
  static const TextStyle subheading18 = TextStyle(
    color: ThemeColors.foreground,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    height: 1,
  );

  // Heading
  static const TextStyle heading20 = TextStyle(
    color: ThemeColors.foreground,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    height: 1,
  );
  static const TextStyle headingM = TextStyle(
    color: ThemeColors.foreground,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    height: 1,
  );
  static const TextStyle heading22 = TextStyle(
    color: ThemeColors.foreground,
    fontSize: 22,
    fontWeight: FontWeight.w700,
    height: 1,
  );
}

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
  static const TextStyle bodyTextL = TextStyle(
    color: ThemeColors.foreground,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  // Subheading
  static const TextStyle subheadingS = TextStyle(
    color: ThemeColors.foreground,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1,
  );
  static const TextStyle subheadingM = TextStyle(
    color: ThemeColors.foreground,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1,
  );
  static const TextStyle subheadingL = TextStyle(
    color: ThemeColors.foreground,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    height: 1,
  );

  // Heading
  static const TextStyle headingS = TextStyle(
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
  static const TextStyle headingL = TextStyle(
    color: ThemeColors.foreground,
    fontSize: 22,
    fontWeight: FontWeight.w700,
    height: 1,
  );
}

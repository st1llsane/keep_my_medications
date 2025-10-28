import 'package:flutter/material.dart';

abstract class ThemeTextStyles {
  // Body text
  static TextStyle bodyTextS(Color color) => TextStyle(
    color: color,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1,
  );

  static TextStyle bodyTextM(Color color) => TextStyle(
    color: color,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1,
  );

  static TextStyle bodyText14(Color color) => TextStyle(
    color: color,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1,
  );

  // Subheading
  static TextStyle subheading14(Color color) => TextStyle(
    color: color,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1,
  );

  static TextStyle subheading16(Color color) => TextStyle(
    color: color,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1,
  );

  static TextStyle subheading18(Color color) => TextStyle(
    color: color,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    height: 1,
  );

  // Heading
  static TextStyle heading18(Color color) => TextStyle(
    color: color,
    fontSize: 18,
    fontWeight: FontWeight.w700,
    height: 1,
  );

  static TextStyle heading20(Color color) => TextStyle(
    color: color,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    height: 1,
  );

  static TextStyle heading22(Color color) => TextStyle(
    color: color,
    fontSize: 22,
    fontWeight: FontWeight.w700,
    height: 1,
  );
}

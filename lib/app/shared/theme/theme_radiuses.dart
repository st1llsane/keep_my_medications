import 'package:flutter/widgets.dart';

abstract class ThemeRadiuses {
  // Radiuses
  static const double radius6 = 8;
  static const double radius12 = 12;
  static const double radius16 = 16;
  static const double radius50 = 50;

  // Radiuses geometry
  static final BorderRadiusGeometry radiusGeometry6 = BorderRadius.circular(
    radius6,
  );
  static final BorderRadiusGeometry radiusGeometry12 = BorderRadius.circular(
    radius12,
  );
  static final BorderRadiusGeometry radiusGeometry16 = BorderRadius.circular(
    radius16,
  );
  static final BorderRadiusGeometry radiusGeometry50 = BorderRadius.circular(
    radius50,
  );
}

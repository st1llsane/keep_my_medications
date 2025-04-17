import 'package:flutter/widgets.dart';

abstract class ThemeRadiuses {
  // Radiuses
  static const double radiusS = 8;
  static const double radiusM = 12;
  static const double radiusL = 16;
  static const double radiusMax = 16;

  // Radiuses geometry
  static final BorderRadiusGeometry radiusGeometryS = BorderRadius.circular(
    radiusS,
  );
  static final BorderRadiusGeometry radiusGeometryM = BorderRadius.circular(
    radiusM,
  );
  static final BorderRadiusGeometry radiusGeometryL = BorderRadius.circular(
    radiusL,
  );
  static final BorderRadiusGeometry radiusGeometryMax = BorderRadius.circular(
    radiusMax,
  );
}

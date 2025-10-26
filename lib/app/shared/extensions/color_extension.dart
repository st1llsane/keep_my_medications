import 'package:flutter/material.dart';

extension ColorExtension on Color {
  /// Convert [Color] to an AARGB [String], which can be easily read
  /// on the server. Also, this method should be used instead of
  /// deprecated way of color conversion by value property.
  ///
  /// Example:
  /// ```dart
  /// Colors.white.toAARGB() # ffffffff
  /// ```
  String toAARGB() {
    return toARGB32().toRadixString(16).padLeft(8, '0');
  }
}

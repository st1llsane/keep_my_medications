import 'package:flutter/material.dart';
import 'package:keep_my_notes/app/router/routes_navigator.dart';
import 'package:keep_my_notes/app/shared/theme/theme_colors.dart';

extension BuildContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => TextTheme.of(this);

  /// Returns current theme colors based on brightness
  ThemeColors get colors {
    final brightness = theme.brightness;
    return brightness == Brightness.light
        ? const LightThemeColors()
        : const DarkThemeColors();
  }

  bool get isDarkMode => theme.brightness == Brightness.dark;

  bool get isLightMode => theme.brightness == Brightness.light;

  MediaQueryData get mediaQuery => MediaQuery.of(this);

  RoutesNavigator get router => RoutesNavigator(context: this);
}

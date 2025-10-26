import 'package:flutter/material.dart';
import 'package:keep_my_notes/app/router/routes_navigator.dart';

extension BuildContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => TextTheme.of(this);

  MediaQueryData get mediaQuery => MediaQuery.of(this);

  RoutesNavigator get router => RoutesNavigator(context: this);
}

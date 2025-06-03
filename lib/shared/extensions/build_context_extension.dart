import 'package:flutter/material.dart';
import 'package:keep_my_notes/router/route_navigator.dart';

extension BuildContextExtension on BuildContext {
  TextTheme get textTheme => TextTheme.of(this);
  RouteNavigator get routeNavigator => RouteNavigator(context: this);
}

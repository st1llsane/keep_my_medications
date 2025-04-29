import 'package:flutter/widgets.dart';
import 'package:keep_my_notes/router/route_navigator.dart';

extension BuildContextExtension on BuildContext {
  RouteNavigator get routeNavigator => RouteNavigator(context: this);
}

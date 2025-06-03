import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:keep_my_notes/router/routes.dart';

final class RouteNavigator {
  const RouteNavigator({required this.context});

  final BuildContext context;

  void medications() {
    context.push(AppRoutes.medications.path);
  }

  void mood() {
    context.push(AppRoutes.mood.path);
  }
}

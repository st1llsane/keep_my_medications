import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:keep_my_notes/app/router/app_routes.dart';

final class RoutesNavigator {
  const RoutesNavigator({required this.context});

  final BuildContext context;

  void pushMedications() {
    context.push(AppRoutes.medications.path);
  }

  void pushMood() {
    context.push(AppRoutes.mood.path);
  }
}

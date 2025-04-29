import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:keep_my_notes/router/routes.dart';

final class RouteNavigator {
  const RouteNavigator({required this.context});

  final BuildContext context;

  void pushMedicationsPage() {
    context.push(AppRoutes.medications.path);
  }

  void pushMoodPage() {
    context.push(AppRoutes.mood.path);
  }
}

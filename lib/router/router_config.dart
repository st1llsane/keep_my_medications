import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:keep_my_notes/features/medications/presentation/pages/medications_page.dart';
import 'package:keep_my_notes/pages/home_page.dart';
import 'package:keep_my_notes/router/routes.dart';
import 'package:keep_my_notes/shared/ui/adaptive_page.dart';

final GoRouter router = GoRouter(
  initialLocation: AppRoutes.home.path,
  routes: [
    GoRoute(
      path: AppRoutes.home.path,
      name: AppRoutes.home.name,
      pageBuilder: (_, _) => AdaptivePage(builder: (_) => const HomePage()),
      routes: [
        GoRoute(
          path: AppRoutes.medications.path,
          name: AppRoutes.medications.name,
          pageBuilder:
              (_, _) => AdaptivePage(builder: (_) => const MedicationsPage()),
        ),
      ],
    ),
  ],
  debugLogDiagnostics: true,
  observers: [_NavigationObserver()],
);

class _NavigationObserver extends NavigatorObserver {
  @override
  void didChangeTop(Route topRoute, Route? previousTopRoute) {
    log('${previousTopRoute?.settings.name} -> ${topRoute.settings.name}');
    super.didChangeTop(topRoute, previousTopRoute);
  }
}

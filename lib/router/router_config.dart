import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:keep_my_notes/features/medications/presentation/pages/medications_page.dart';
import 'package:keep_my_notes/pages/home_page.dart';
import 'package:keep_my_notes/router/routes.dart';
import 'package:keep_my_notes/router/test_shell.dart';
import 'package:keep_my_notes/shared/ui/adaptive_page.dart';

final _navigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final GoRouter router = GoRouter(
  navigatorKey: _navigatorKey,
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
        testShell,
      ],
    ),
  ],
  // debugLogDiagnostics: true,
  observers: [_NavigatorObserver()],
);

class _NavigatorObserver extends NavigatorObserver {
  // @override
  // void didChangeTop(Route topRoute, Route? previousTopRoute) {
  //   super.didChangeTop(topRoute, previousTopRoute);
  //   log('${previousTopRoute?.navigator} -> ${topRoute.settings.name}');
  // }
}

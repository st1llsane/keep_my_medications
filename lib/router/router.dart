import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:keep_my_notes/pages/home_page.dart';
import 'package:keep_my_notes/router/routes.dart';
import 'package:keep_my_notes/router/routes/medications_routes.dart';
import 'package:keep_my_notes/router/routes/mood_routes.dart';
import 'package:keep_my_notes/shared/ui/adaptive_page.dart';

part 'routes/home_routes.dart';

final _navigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final GoRouter router = GoRouter(
  navigatorKey: _navigatorKey,
  // initialLocation: AppRoutes.home.path,
  initialLocation: AppRoutes.medications.path,
  routes: [homeRoutes],
  debugLogDiagnostics: true,
  observers: [_NavigatorObserver()],
);

class _NavigatorObserver extends NavigatorObserver {
  // @override
  // void didChangeTop(Route topRoute, Route? previousTopRoute) {
  //   super.didChangeTop(topRoute, previousTopRoute);
  //   print('${previousTopRoute?.settings.name} -> ${topRoute.settings.name}');
  // }
}

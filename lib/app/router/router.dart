import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:keep_my_notes/app/router/app_routes.dart';
import 'package:keep_my_notes/app/router/routes/medications_routes.dart';
import 'package:keep_my_notes/app/router/routes/mood_routes.dart';
import 'package:keep_my_notes/app/shared/widgets/adaptive_page.dart';
import 'package:keep_my_notes/features/home/pages/home_page.dart';

part 'routes/home_routes.dart';

final _navigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final GoRouter router = GoRouter(
  navigatorKey: _navigatorKey,
  // initialLocation: AppRoutes.home.path,
  initialLocation: AppRoutes.mood.path,
  routes: [homeRoutes],
  observers: [_NavigatorObserver()],
  debugLogDiagnostics: true,
);

class _NavigatorObserver extends NavigatorObserver {
  // @override
  // void didChangeTop(Route topRoute, Route? previousTopRoute) {
  //   super.didChangeTop(topRoute, previousTopRoute);
  //   print('${previousTopRoute?.settings.name} -> ${topRoute.settings.name}');
  // }
}

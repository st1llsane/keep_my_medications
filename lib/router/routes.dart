final class AppRoute {
  AppRoute(this.name, [String? path]) : path = path ?? '/$name';

  final String path;
  final String name;
}

abstract class AppRoutes {
  static final AppRoute home = AppRoute('home', '/');
  static final AppRoute medications = AppRoute('medications');
}

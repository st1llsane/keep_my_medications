final class AppRoute {
  const AppRoute(this.name, [String? path]) : path = path ?? '/$name';

  final String path;
  final String name;
}

abstract class AppRoutes {
  static const AppRoute home = AppRoute('home', '/');
  static const AppRoute medications = AppRoute('medications');
}

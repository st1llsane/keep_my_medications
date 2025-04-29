final class AppRoute {
  const AppRoute(this.name, [String? path]) : path = path ?? '/$name';

  final String path;
  final String name;
}

abstract class AppRoutes {
  static const AppRoute home = AppRoute('home', '/');
  static const AppRoute medications = AppRoute('medications');

  // Mood
  static const AppRoute moodOutlet = AppRoute('mood-outlet');
  static const AppRoute mood = AppRoute('mood');
}

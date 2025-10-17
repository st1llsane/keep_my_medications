part of '../router.dart';

final homeRoutes = GoRoute(
  path: AppRoutes.home.path,
  name: AppRoutes.home.name,
  pageBuilder:
      (_, _) =>
          AdaptivePage(name: AppRoutes.home.name, child: const HomePage()),
  routes: [...medicationsRoutes, moodRoutes],
);

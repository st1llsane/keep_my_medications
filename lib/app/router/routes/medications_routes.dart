import 'package:go_router/go_router.dart';
import 'package:keep_my_notes/app/router/app_routes.dart';
import 'package:keep_my_notes/app/shared/widgets/adaptive_page.dart';
import 'package:keep_my_notes/features/medications/presentation/pages/medications_page.dart';

final List<GoRoute> medicationsRoutes = [
  GoRoute(
    path: AppRoutes.medications.path,
    name: AppRoutes.medications.name,
    pageBuilder: (_, _) => AdaptivePage(
      name: AppRoutes.medications.name,
      child: const MedicationsPage(),
    ),
  ),
];

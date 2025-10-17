import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_my_notes/configs/get_it_config.dart';
import 'package:keep_my_notes/features/medications/models/states/medications_state.dart';
import 'package:keep_my_notes/features/medications/presentation/blocs/medications_bloc.dart';
import 'package:keep_my_notes/features/medications/presentation/pages/medications_page_view.dart';
import 'package:keep_my_notes/app/shared/widgets/adaptive_nav_bar.dart';

class MedicationsPage extends StatelessWidget {
  const MedicationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AdaptiveNavBar(title: 'Препараты'),
      body: BlocProvider<MedicationsBloc>(
        create: (context) => getIt<MedicationsBloc>(),
        child: BlocBuilder<MedicationsBloc, MedicationsState>(
          builder: (context, state) => MedicationsPageView(state),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_my_notes/config/get_it_config.dart';
import 'package:keep_my_notes/features/medications/models/medication.dart';
import 'package:keep_my_notes/features/medications/models/states/medications_state.dart';
import 'package:keep_my_notes/features/medications/presentation/blocs/medications_bloc.dart';
import 'package:keep_my_notes/features/medications/presentation/widgets/medication_tile.dart';
import 'package:keep_my_notes/shared/ui/adaptive_nav_bar.dart';

class MedicationsPage extends StatelessWidget {
  const MedicationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AdaptiveNavBar(title: 'Препараты'),
      body: BlocProvider<MedicationsBloc>(
        create: (context) => getIt<MedicationsBloc>(),
        child: BlocBuilder<MedicationsBloc, MedicationsState>(builder: builder),
      ),
    );
  }

  Widget builder(BuildContext context, MedicationsState state) {
    final MedicationsState(:medications) = state;

    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
      child: Column(
        spacing: 12,
        children: [
          ListView.builder(
            itemCount: medications.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final Medication medication = medications[index];
              return MedicationTile(medication: medication);
            },
          ),
        ],
      ),
    );
  }
}

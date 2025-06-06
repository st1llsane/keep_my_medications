import 'package:flutter/material.dart';
import 'package:keep_my_notes/features/medications/models/medication.dart';
import 'package:keep_my_notes/features/medications/models/states/medications_state.dart';
import 'package:keep_my_notes/features/medications/presentation/widgets/medication_tile.dart';
import 'package:keep_my_notes/features/medications/presentation/widgets/medications_progress_section.dart';

class MedicationsPageView extends StatelessWidget {
  const MedicationsPageView(this.state, {super.key});

  final MedicationsState state;

  @override
  Widget build(BuildContext context) {
    // final MedicationsState(:medications) = state;
    final medications = [
      Medication.mock(),
      Medication.mock(),
      Medication.mock(),
      Medication.mock(),
      Medication.mock(),
      Medication.mock(),
      Medication.mock(),
      Medication.mock(),
      Medication.mock(),
    ];

    // TODO: Вынести наверх
    if (medications.isEmpty) {
      return Container(child: Center(child: Text('Empty')));
    }

    const medicationsProgress = MedicationsProgressSection();

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Column(
        spacing: 12,
        children: [
          medicationsProgress,
          Expanded(
            child: ListView.builder(
              itemCount: medications.length,
              padding: const EdgeInsets.only(top: 20, bottom: 40),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final Medication medication = medications[index];
                final bool isLastItem = index == medications.length - 1;

                return Padding(
                  padding: EdgeInsets.only(bottom: isLastItem ? 0 : 12),
                  child: MedicationTile(medication: medication),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

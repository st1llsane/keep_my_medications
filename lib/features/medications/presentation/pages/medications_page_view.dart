import 'package:flutter/material.dart';
import 'package:keep_my_notes/features/medications/models/medication.dart';
import 'package:keep_my_notes/features/medications/models/states/medications_state.dart';
import 'package:keep_my_notes/features/medications/presentation/widgets/medication_tile.dart';

class MedicationsPageView extends StatelessWidget {
  const MedicationsPageView(this.state, {super.key});

  final MedicationsState state;

  @override
  Widget build(BuildContext context) {
    // final MedicationsState(:medications) = state;
    final medications = [Medication.mock(), Medication.mock()];

    if (medications.isEmpty) {
      return Container(child: Center(child: Text('Empty')));
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Column(
        spacing: 12,
        children: [
          ListView.builder(
            itemCount: medications.length,
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
        ],
      ),
    );
  }
}

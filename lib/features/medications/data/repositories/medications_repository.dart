import 'dart:developer';

import 'package:keep_my_notes/features/medications/data/data_sources/medications_data_source_impl.dart';
import 'package:keep_my_notes/features/medications/models/medication.dart';

class MedicationsRepository {
  const MedicationsRepository(this.medicationsDataSource);

  final MedicationsDataSource medicationsDataSource;

  Future<List<Medication>> getMedications() async {
    try {
      final List<Medication> medications =
          await medicationsDataSource.getMedications();
      return medications;
    } catch (e) {
      log(e.toString());
      return [];
    }
  }
}

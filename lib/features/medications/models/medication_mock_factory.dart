import 'package:keep_my_notes/app/shared/enums/medication_time_period.dart';
import 'medication.dart';

class MedicationMockFactory {
  static Medication defaultMedication() => const Medication(
    id: 0,
    name: 'Название',
    shortDescription: 'Короткое описание',
    description: 'Полное описание',
    timePeriod: MedicationTimePeriod.morning,
    dose: 1,
    perDayCount: 1,
    takenToday: 1,
    createdAt: null,
    updatedAt: null,
  );

  static Medication withName(String name) =>
      defaultMedication().copyWith(name: name);

  static Medication withTimePeriod(MedicationTimePeriod timePeriod) =>
      defaultMedication().copyWith(timePeriod: timePeriod);

  static Medication evening() => defaultMedication().copyWith(
    name: 'Вечернее лекарство',
    timePeriod: MedicationTimePeriod.evening,
  );

  static Medication morning() => defaultMedication().copyWith(
    name: 'Утреннее лекарство',
    timePeriod: MedicationTimePeriod.morning,
  );

  static List<Medication> list() => [
    morning(),
    evening(),
    withName('Витамины'),
  ];
}

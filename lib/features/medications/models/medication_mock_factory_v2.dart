import 'package:keep_my_notes/app/shared/enums/medication_time_period.dart';
import 'package:keep_my_notes/app/shared/testing/mock_factory.dart';
import 'medication.dart';

/// Фабрика для создания моковых объектов Medication
/// с использованием Abstract Factory паттерна
class MedicationMockFactory extends TestDataFactory
    with RandomMockData
    implements MockFactory<Medication> {
  const MedicationMockFactory();

  @override
  Medication create() => Medication(
    id: randomId,
    name: 'Лекарство_${randomId % 100}',
    shortDescription: 'Короткое описание',
    description: 'Полное описание лекарства',
    timePeriod: MedicationTimePeriod
        .values[randomId % MedicationTimePeriod.values.length],
    dose: (randomId % 10 + 1).toDouble(),
    perDayCount: randomId % 3 + 1,
    takenToday: randomId % 2,
    createdAt: randomDate.toIso8601String(),
    updatedAt: randomDate.toIso8601String(),
  );

  @override
  List<Medication> createList({int count = 3}) =>
      List.generate(count, (_) => create());

  // Специализированные методы для Medication
  Medication createMorning() => create().copyWith(
    timePeriod: MedicationTimePeriod.morning,
    name: 'Утреннее лекарство',
  );

  Medication createEvening() => create().copyWith(
    timePeriod: MedicationTimePeriod.evening,
    name: 'Вечернее лекарство',
  );

  Medication createWithName(String name) => create().copyWith(name: name);

  List<Medication> createMixedTimePeriods() => [
    createMorning(),
    createEvening(),
  ];

  // Фабричные методы для разных сценариев
  static const MedicationMockFactory instance = MedicationMockFactory();

  static Medication simple() => instance.create();
  static List<Medication> list([int count = 3]) =>
      instance.createList(count: count);
}

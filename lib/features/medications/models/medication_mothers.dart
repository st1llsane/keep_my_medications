import 'package:keep_my_notes/app/shared/enums/medication_time_period.dart';
import 'medication.dart';

/// Object Mother паттерн для создания готовых тестовых объектов Medication
/// для различных сценариев использования
class MedicationMothers {
  // Приватный конструктор
  const MedicationMothers._();

  /// Простое лекарство для базовых тестов
  static Medication simple() => const Medication(
    id: 1,
    name: 'Аспирин',
    shortDescription: 'От головной боли',
    description: 'Принимать при необходимости',
    timePeriod: MedicationTimePeriod.morning,
    dose: 100.0,
    perDayCount: 1,
    takenToday: 0,
    createdAt: null,
    updatedAt: null,
  );

  /// Лекарство с полными данными
  static Medication complete() => const Medication(
    id: 2,
    name: 'Ибупрофен',
    shortDescription: 'Противовоспалительное',
    description: 'Принимать после еды, не более 3 таблеток в день',
    timePeriod: MedicationTimePeriod.morning,
    dose: 400.0,
    perDayCount: 3,
    takenToday: 1,
    createdAt: '2024-01-01T08:00:00Z',
    updatedAt: '2024-01-01T09:30:00Z',
  );

  /// Утреннее лекарство
  static Medication morning() => const Medication(
    id: 3,
    name: 'Витамины',
    shortDescription: 'Поливитаминный комплекс',
    description: 'Принимать утром натощак',
    timePeriod: MedicationTimePeriod.morning,
    dose: 1.0,
    perDayCount: 1,
    takenToday: 1,
    createdAt: null,
    updatedAt: null,
  );

  /// Вечернее лекарство
  static Medication evening() => const Medication(
    id: 4,
    name: 'Мелатонин',
    shortDescription: 'Для улучшения сна',
    description: 'Принимать за час до сна',
    timePeriod: MedicationTimePeriod.evening,
    dose: 3.0,
    perDayCount: 1,
    takenToday: 0,
    createdAt: null,
    updatedAt: null,
  );

  /// Лекарство, которое уже принято сегодня
  static Medication takenToday() => const Medication(
    id: 5,
    name: 'Омепразол',
    shortDescription: 'Для желудка',
    description: 'Принимать за 30 минут до еды',
    timePeriod: MedicationTimePeriod.morning,
    dose: 20.0,
    perDayCount: 1,
    takenToday: 1,
    createdAt: null,
    updatedAt: null,
  );

  /// Лекарство с несколькими приемами в день
  static Medication multipleDaily() => const Medication(
    id: 6,
    name: 'Антибиотик',
    shortDescription: 'Курс лечения',
    description: 'Принимать 3 раза в день через равные промежутки',
    timePeriod: MedicationTimePeriod.morning,
    dose: 250.0,
    perDayCount: 3,
    takenToday: 2,
    createdAt: null,
    updatedAt: null,
  );

  /// Лекарство с дробной дозировкой
  static Medication fractionalDose() => const Medication(
    id: 7,
    name: 'Варфарин',
    shortDescription: 'Антикоагулант',
    description: 'Точно соблюдать дозировку',
    timePeriod: MedicationTimePeriod.evening,
    dose: 2.5,
    perDayCount: 1,
    takenToday: 0,
    createdAt: null,
    updatedAt: null,
  );

  /// Список лекарств для тестирования списков
  static List<Medication> basicList() => [simple(), morning(), evening()];

  /// Смешанный список с разными состояниями
  static List<Medication> mixedList() => [
    complete(),
    takenToday(),
    multipleDaily(),
    fractionalDose(),
  ];

  /// Пустой список
  static List<Medication> emptyList() => [];

  /// Большой список для тестирования производительности
  static List<Medication> largeList() => List.generate(
    100,
    (index) => Medication(
      id: index,
      name: 'Лекарство ${index + 1}',
      shortDescription: 'Описание ${index + 1}',
      description: 'Полное описание лекарства ${index + 1}',
      timePeriod: index % 2 == 0
          ? MedicationTimePeriod.morning
          : MedicationTimePeriod.evening,
      dose: (index % 5 + 1).toDouble(),
      perDayCount: index % 3 + 1,
      takenToday: index % 2,
      createdAt: null,
      updatedAt: null,
    ),
  );
}

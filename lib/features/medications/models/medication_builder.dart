import 'package:keep_my_notes/app/shared/enums/medication_time_period.dart';
import 'medication.dart';

class MedicationBuilder {
  int _id = 0;
  String? _name = 'Название';
  String? _shortDescription = 'Короткое описание';
  String? _description = 'Полное описание';
  MedicationTimePeriod _timePeriod = MedicationTimePeriod.morning;
  double? _dose = 1.0;
  int? _perDayCount = 1;
  int _takenToday = 0;
  String? _createdAt;
  String? _updatedAt;

  // Fluent API методы
  MedicationBuilder withId(int id) {
    _id = id;
    return this;
  }

  MedicationBuilder withName(String name) {
    _name = name;
    return this;
  }

  MedicationBuilder withShortDescription(String description) {
    _shortDescription = description;
    return this;
  }

  MedicationBuilder withDescription(String description) {
    _description = description;
    return this;
  }

  MedicationBuilder withTimePeriod(MedicationTimePeriod timePeriod) {
    _timePeriod = timePeriod;
    return this;
  }

  MedicationBuilder withDose(double dose) {
    _dose = dose;
    return this;
  }

  MedicationBuilder withPerDayCount(int count) {
    _perDayCount = count;
    return this;
  }

  MedicationBuilder withTakenToday(int taken) {
    _takenToday = taken;
    return this;
  }

  MedicationBuilder withTimestamps(String createdAt, String updatedAt) {
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    return this;
  }

  // Готовые пресеты
  MedicationBuilder asIbuprofen() => this
      .withName('Ибупрофен')
      .withShortDescription('Обезболивающее')
      .withDescription('Противовоспалительное и обезболивающее средство')
      .withDose(400.0)
      .withPerDayCount(3);

  MedicationBuilder asVitamins() => this
      .withName('Витамины D3')
      .withShortDescription('Витаминный комплекс')
      .withDescription('Поддерживает иммунную систему')
      .withDose(1000.0)
      .withPerDayCount(1)
      .withTimePeriod(MedicationTimePeriod.morning);

  MedicationBuilder asMorningMedication() =>
      this.withTimePeriod(MedicationTimePeriod.morning);

  MedicationBuilder asEveningMedication() =>
      this.withTimePeriod(MedicationTimePeriod.evening);

  // Построение объекта
  Medication build() => Medication(
    id: _id,
    name: _name,
    shortDescription: _shortDescription,
    description: _description,
    timePeriod: _timePeriod,
    dose: _dose,
    perDayCount: _perDayCount,
    takenToday: _takenToday,
    createdAt: _createdAt,
    updatedAt: _updatedAt,
  );

  // Статический метод для начала построения
  static MedicationBuilder create() => MedicationBuilder();
}

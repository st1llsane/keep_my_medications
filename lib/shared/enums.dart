import 'package:json_annotation/json_annotation.dart';

part 'enums.g.dart';

@JsonEnum(alwaysCreate: true)
enum MedicationTimePeriod {
  morning('Утро'),
  noon('Полдень'),
  afternoon('День'),
  evening('Вечер');

  const MedicationTimePeriod(this.text);

  final String text;
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keep_my_notes/shared/enums.dart';

part 'medication.freezed.dart';
part 'medication.g.dart';

@Freezed(fromJson: true, toJson: true)
abstract class Medication with _$Medication {
  const factory Medication({
    required int id,
    required String? name,
    required String? description,
    required MedicationTimePeriod timePeriod,
    required double? dose,
    required int? perDayCount,
    required int takenToday,
    required String createdAt,
    required String? updatedAt,
  }) = _Medication;

  factory Medication.fromJson(Map<String, Object?> json) =>
      _$MedicationFromJson(json);
}

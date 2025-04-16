import 'package:freezed_annotation/freezed_annotation.dart';

part 'medication.freezed.dart';
part 'medication.g.dart';

@Freezed(fromJson: true, toJson: true)
abstract class Medication with _$Medication {
  const factory Medication({
    required String id,
    required String? name,
    required String? description,
    required double? dosage,
    required String createdAt,
    required String? updatedAt,
  }) = _Medication;

  factory Medication.fromJson(Map<String, Object?> json) =>
      _$MedicationFromJson(json);
}

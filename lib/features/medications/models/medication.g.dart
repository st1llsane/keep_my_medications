// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medication.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Medication _$MedicationFromJson(Map<String, dynamic> json) => _Medication(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String?,
  description: json['description'] as String?,
  timePeriod: $enumDecode(_$MedicationTimePeriodEnumMap, json['time_period']),
  dose: (json['dose'] as num?)?.toDouble(),
  perDayCount: (json['per_day_count'] as num?)?.toInt(),
  takenToday: (json['taken_today'] as num).toInt(),
  createdAt: json['created_at'] as String,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$MedicationToJson(_Medication instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'time_period': _$MedicationTimePeriodEnumMap[instance.timePeriod]!,
      'dose': instance.dose,
      'per_day_count': instance.perDayCount,
      'taken_today': instance.takenToday,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

const _$MedicationTimePeriodEnumMap = {
  MedicationTimePeriod.morning: 'morning',
  MedicationTimePeriod.noon: 'noon',
  MedicationTimePeriod.afternoon: 'afternoon',
  MedicationTimePeriod.evening: 'evening',
};

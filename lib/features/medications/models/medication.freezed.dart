// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medication.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Medication {

 int get id; String? get name; String? get description; String? get dosage; MedicationTimePeriod get timePeriod; String get createdAt; String? get updatedAt;

  /// Serializes this Medication to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'Medication(id: $id, name: $name, description: $description, dosage: $dosage, timePeriod: $timePeriod, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}




/// @nodoc
@JsonSerializable()

class _Medication implements Medication {
  const _Medication({required this.id, required this.name, required this.description, required this.dosage, required this.timePeriod, required this.createdAt, required this.updatedAt});
  factory _Medication.fromJson(Map<String, dynamic> json) => _$MedicationFromJson(json);

@override final  int id;
@override final  String? name;
@override final  String? description;
@override final  String? dosage;
@override final  MedicationTimePeriod timePeriod;
@override final  String createdAt;
@override final  String? updatedAt;


@override
Map<String, dynamic> toJson() {
  return _$MedicationToJson(this, );
}



@override
String toString() {
  return 'Medication(id: $id, name: $name, description: $description, dosage: $dosage, timePeriod: $timePeriod, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}




// dart format on

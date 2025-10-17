// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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

 int get id; String? get name; String? get shortDescription; String? get description; MedicationTimePeriod get timePeriod; double? get dose; int? get perDayCount; int get takenToday; String? get createdAt; String? get updatedAt;
/// Create a copy of Medication
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MedicationCopyWith<Medication> get copyWith => _$MedicationCopyWithImpl<Medication>(this as Medication, _$identity);

  /// Serializes this Medication to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'Medication(id: $id, name: $name, shortDescription: $shortDescription, description: $description, timePeriod: $timePeriod, dose: $dose, perDayCount: $perDayCount, takenToday: $takenToday, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $MedicationCopyWith<$Res>  {
  factory $MedicationCopyWith(Medication value, $Res Function(Medication) _then) = _$MedicationCopyWithImpl;
@useResult
$Res call({
 int id, String? name, String? shortDescription, String? description, MedicationTimePeriod timePeriod, double? dose, int? perDayCount, int takenToday, String? createdAt, String? updatedAt
});




}
/// @nodoc
class _$MedicationCopyWithImpl<$Res>
    implements $MedicationCopyWith<$Res> {
  _$MedicationCopyWithImpl(this._self, this._then);

  final Medication _self;
  final $Res Function(Medication) _then;

/// Create a copy of Medication
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? shortDescription = freezed,Object? description = freezed,Object? timePeriod = null,Object? dose = freezed,Object? perDayCount = freezed,Object? takenToday = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,shortDescription: freezed == shortDescription ? _self.shortDescription : shortDescription // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,timePeriod: null == timePeriod ? _self.timePeriod : timePeriod // ignore: cast_nullable_to_non_nullable
as MedicationTimePeriod,dose: freezed == dose ? _self.dose : dose // ignore: cast_nullable_to_non_nullable
as double?,perDayCount: freezed == perDayCount ? _self.perDayCount : perDayCount // ignore: cast_nullable_to_non_nullable
as int?,takenToday: null == takenToday ? _self.takenToday : takenToday // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}



/// @nodoc
@JsonSerializable()

class _Medication implements Medication {
  const _Medication({required this.id, required this.name, required this.shortDescription, required this.description, required this.timePeriod, required this.dose, required this.perDayCount, required this.takenToday, required this.createdAt, required this.updatedAt});
  factory _Medication.fromJson(Map<String, dynamic> json) => _$MedicationFromJson(json);

@override final  int id;
@override final  String? name;
@override final  String? shortDescription;
@override final  String? description;
@override final  MedicationTimePeriod timePeriod;
@override final  double? dose;
@override final  int? perDayCount;
@override final  int takenToday;
@override final  String? createdAt;
@override final  String? updatedAt;

/// Create a copy of Medication
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MedicationCopyWith<_Medication> get copyWith => __$MedicationCopyWithImpl<_Medication>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MedicationToJson(this, );
}



@override
String toString() {
  return 'Medication(id: $id, name: $name, shortDescription: $shortDescription, description: $description, timePeriod: $timePeriod, dose: $dose, perDayCount: $perDayCount, takenToday: $takenToday, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$MedicationCopyWith<$Res> implements $MedicationCopyWith<$Res> {
  factory _$MedicationCopyWith(_Medication value, $Res Function(_Medication) _then) = __$MedicationCopyWithImpl;
@override @useResult
$Res call({
 int id, String? name, String? shortDescription, String? description, MedicationTimePeriod timePeriod, double? dose, int? perDayCount, int takenToday, String? createdAt, String? updatedAt
});




}
/// @nodoc
class __$MedicationCopyWithImpl<$Res>
    implements _$MedicationCopyWith<$Res> {
  __$MedicationCopyWithImpl(this._self, this._then);

  final _Medication _self;
  final $Res Function(_Medication) _then;

/// Create a copy of Medication
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? shortDescription = freezed,Object? description = freezed,Object? timePeriod = null,Object? dose = freezed,Object? perDayCount = freezed,Object? takenToday = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_Medication(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,shortDescription: freezed == shortDescription ? _self.shortDescription : shortDescription // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,timePeriod: null == timePeriod ? _self.timePeriod : timePeriod // ignore: cast_nullable_to_non_nullable
as MedicationTimePeriod,dose: freezed == dose ? _self.dose : dose // ignore: cast_nullable_to_non_nullable
as double?,perDayCount: freezed == perDayCount ? _self.perDayCount : perDayCount // ignore: cast_nullable_to_non_nullable
as int?,takenToday: null == takenToday ? _self.takenToday : takenToday // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

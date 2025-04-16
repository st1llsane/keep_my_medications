// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medications_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MedicationsState {

 MedicationsStateStatus get status; List<Medication> get medications; bool get isLoading;
/// Create a copy of MedicationsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MedicationsStateCopyWith<MedicationsState> get copyWith => _$MedicationsStateCopyWithImpl<MedicationsState>(this as MedicationsState, _$identity);





@override
String toString() {
  return 'MedicationsState(status: $status, medications: $medications, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $MedicationsStateCopyWith<$Res>  {
  factory $MedicationsStateCopyWith(MedicationsState value, $Res Function(MedicationsState) _then) = _$MedicationsStateCopyWithImpl;
@useResult
$Res call({
 MedicationsStateStatus status, List<Medication> medications, bool isLoading
});




}
/// @nodoc
class _$MedicationsStateCopyWithImpl<$Res>
    implements $MedicationsStateCopyWith<$Res> {
  _$MedicationsStateCopyWithImpl(this._self, this._then);

  final MedicationsState _self;
  final $Res Function(MedicationsState) _then;

/// Create a copy of MedicationsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? medications = null,Object? isLoading = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MedicationsStateStatus,medications: null == medications ? _self.medications : medications // ignore: cast_nullable_to_non_nullable
as List<Medication>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _MedicationsState implements MedicationsState {
  const _MedicationsState({this.status = MedicationsStateStatus.idle, final  List<Medication> medications = const [], this.isLoading = false}): _medications = medications;
  

@override@JsonKey() final  MedicationsStateStatus status;
 final  List<Medication> _medications;
@override@JsonKey() List<Medication> get medications {
  if (_medications is EqualUnmodifiableListView) return _medications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_medications);
}

@override@JsonKey() final  bool isLoading;

/// Create a copy of MedicationsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MedicationsStateCopyWith<_MedicationsState> get copyWith => __$MedicationsStateCopyWithImpl<_MedicationsState>(this, _$identity);





@override
String toString() {
  return 'MedicationsState(status: $status, medications: $medications, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$MedicationsStateCopyWith<$Res> implements $MedicationsStateCopyWith<$Res> {
  factory _$MedicationsStateCopyWith(_MedicationsState value, $Res Function(_MedicationsState) _then) = __$MedicationsStateCopyWithImpl;
@override @useResult
$Res call({
 MedicationsStateStatus status, List<Medication> medications, bool isLoading
});




}
/// @nodoc
class __$MedicationsStateCopyWithImpl<$Res>
    implements _$MedicationsStateCopyWith<$Res> {
  __$MedicationsStateCopyWithImpl(this._self, this._then);

  final _MedicationsState _self;
  final $Res Function(_MedicationsState) _then;

/// Create a copy of MedicationsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? medications = null,Object? isLoading = null,}) {
  return _then(_MedicationsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MedicationsStateStatus,medications: null == medications ? _self._medications : medications // ignore: cast_nullable_to_non_nullable
as List<Medication>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on

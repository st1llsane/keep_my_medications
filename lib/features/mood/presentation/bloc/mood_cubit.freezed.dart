// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mood_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MoodState {

 MoodStateStatus get status; List<MoodItemViewModel> get moodItems; MoodRating? get selectedMoodRating;
/// Create a copy of MoodState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoodStateCopyWith<MoodState> get copyWith => _$MoodStateCopyWithImpl<MoodState>(this as MoodState, _$identity);





@override
String toString() {
  return 'MoodState(status: $status, moodItems: $moodItems, selectedMoodRating: $selectedMoodRating)';
}


}

/// @nodoc
abstract mixin class $MoodStateCopyWith<$Res>  {
  factory $MoodStateCopyWith(MoodState value, $Res Function(MoodState) _then) = _$MoodStateCopyWithImpl;
@useResult
$Res call({
 MoodStateStatus status, List<MoodItemViewModel> moodItems, MoodRating? selectedMoodRating
});




}
/// @nodoc
class _$MoodStateCopyWithImpl<$Res>
    implements $MoodStateCopyWith<$Res> {
  _$MoodStateCopyWithImpl(this._self, this._then);

  final MoodState _self;
  final $Res Function(MoodState) _then;

/// Create a copy of MoodState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? moodItems = null,Object? selectedMoodRating = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MoodStateStatus,moodItems: null == moodItems ? _self.moodItems : moodItems // ignore: cast_nullable_to_non_nullable
as List<MoodItemViewModel>,selectedMoodRating: freezed == selectedMoodRating ? _self.selectedMoodRating : selectedMoodRating // ignore: cast_nullable_to_non_nullable
as MoodRating?,
  ));
}

}



/// @nodoc


class _MoodState extends MoodState {
  const _MoodState({this.status = MoodStateStatus.loading, final  List<MoodItemViewModel> moodItems = const [], this.selectedMoodRating}): _moodItems = moodItems,super._();
  

@override@JsonKey() final  MoodStateStatus status;
 final  List<MoodItemViewModel> _moodItems;
@override@JsonKey() List<MoodItemViewModel> get moodItems {
  if (_moodItems is EqualUnmodifiableListView) return _moodItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_moodItems);
}

@override final  MoodRating? selectedMoodRating;

/// Create a copy of MoodState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoodStateCopyWith<_MoodState> get copyWith => __$MoodStateCopyWithImpl<_MoodState>(this, _$identity);





@override
String toString() {
  return 'MoodState(status: $status, moodItems: $moodItems, selectedMoodRating: $selectedMoodRating)';
}


}

/// @nodoc
abstract mixin class _$MoodStateCopyWith<$Res> implements $MoodStateCopyWith<$Res> {
  factory _$MoodStateCopyWith(_MoodState value, $Res Function(_MoodState) _then) = __$MoodStateCopyWithImpl;
@override @useResult
$Res call({
 MoodStateStatus status, List<MoodItemViewModel> moodItems, MoodRating? selectedMoodRating
});




}
/// @nodoc
class __$MoodStateCopyWithImpl<$Res>
    implements _$MoodStateCopyWith<$Res> {
  __$MoodStateCopyWithImpl(this._self, this._then);

  final _MoodState _self;
  final $Res Function(_MoodState) _then;

/// Create a copy of MoodState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? moodItems = null,Object? selectedMoodRating = freezed,}) {
  return _then(_MoodState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MoodStateStatus,moodItems: null == moodItems ? _self._moodItems : moodItems // ignore: cast_nullable_to_non_nullable
as List<MoodItemViewModel>,selectedMoodRating: freezed == selectedMoodRating ? _self.selectedMoodRating : selectedMoodRating // ignore: cast_nullable_to_non_nullable
as MoodRating?,
  ));
}


}

// dart format on

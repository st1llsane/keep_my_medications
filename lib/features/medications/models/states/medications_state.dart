import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:keep_my_notes/features/medications/models/medication.dart';

part 'medications_state.freezed.dart';

enum MedicationsStateStatus { idle, empty }

@Freezed(copyWith: true)
abstract class MedicationsState with _$MedicationsState {
  const factory MedicationsState({
    @Default(MedicationsStateStatus.idle) MedicationsStateStatus status,
    @Default([]) List<Medication> medications,
    @Default(false) bool isLoading,
  }) = _MedicationsState;
}

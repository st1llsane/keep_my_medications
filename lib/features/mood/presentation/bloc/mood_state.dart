part of 'mood_cubit.dart';

enum MoodStateStatus { loading, success, failure }

@Freezed(copyWith: true)
abstract class MoodState with _$MoodState {
  const MoodState._();

  const factory MoodState({
    @Default(MoodStateStatus.loading) MoodStateStatus status,
    @Default([]) List<MoodItemViewModel> moodItems,
  }) = _MoodState;

  bool get isFailure => status == MoodStateStatus.failure;

  bool get isSuccess => status == MoodStateStatus.success;
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_state.freezed.dart';

enum RegistrationStateStatus { idle, error }

@Freezed(copyWith: true)
abstract class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    @Default(RegistrationStateStatus.idle) RegistrationStateStatus status,
    @Default('') String email,
    @Default('') String password,
  }) = _Initial;

  // const factory RegistrationState.initial() = _Initial;
}

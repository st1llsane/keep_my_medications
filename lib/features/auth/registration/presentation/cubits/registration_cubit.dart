import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:keep_my_notes/features/auth/registration/data/repositories/registration_repository.dart';
import 'package:keep_my_notes/features/auth/registration/domain/states/registration_state.dart';

@injectable
class RegistrationCubit extends Cubit<RegistrationState> {
  RegistrationCubit(this._registrationRepository)
    : super(const RegistrationState());

  final RegistrationRepository _registrationRepository;

  Future<void> register({
    required String email,
    required String password,
  }) async {
    try {
      await _registrationRepository.register(email: email, password: password);
    } catch (e, st) {
      debugPrint('$e: $st');
    }
  }
}

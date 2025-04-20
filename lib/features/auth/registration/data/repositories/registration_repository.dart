import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:keep_my_notes/features/auth/registration/data/data_sources/registration_data_source.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@injectable
class RegistrationRepository {
  const RegistrationRepository(this._registrationDataSource);

  final RegistrationDataSource _registrationDataSource;

  Future<void> register({
    required String email,
    required String password,
  }) async {
    await _registrationDataSource.register(
      email: 'valid.email@supabase.io',
      password: 'example-password',
    );
  }
}

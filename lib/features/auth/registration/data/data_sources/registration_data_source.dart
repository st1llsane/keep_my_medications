import 'package:injectable/injectable.dart';
import 'package:keep_my_notes/shared/global.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class RegistrationDataSource {
  Future<void> register({required String email, required String password});
}

@Injectable(as: RegistrationDataSource)
class RegistrationDataSourceImpl implements RegistrationDataSource {
  @override
  Future<void> register({
    required String email,
    required String password,
  }) async {
    final AuthResponse res = await supabase.auth.signUp(
      email: 'valid.email@supabase.io',
      password: 'example-password',
    );
    print('res: $res');
  }
}

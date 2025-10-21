import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabase = Supabase.instance.client;

Future<void> initSupabase() async {
  final String? dbUrl = dotenv.env['DB_URL'];
  final String? publishableKey = dotenv.env['SB_PUBLISHABLE_KEY'];

  if (dbUrl == null || publishableKey == null) {
    throw ErrorDescription(
      'You are probably forget to provide "DB_URL" or "DB_ANON_KEY',
    );
  }

  await Supabase.initialize(
    url: dbUrl,
    anonKey: publishableKey,
    headers: {'Content-Type': 'application/json'},
    debug: kDebugMode,
  );
}

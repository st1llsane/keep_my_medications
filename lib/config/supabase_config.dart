import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> initSupabase() async {
  final String? dbUrl = dotenv.env['DB_URL'];
  final String? anonKey = dotenv.env['DB_ANON_KEY'];

  if (dbUrl == null || anonKey == null) {
    throw ErrorDescription('Forget to provide "DB_URL" or "DB_ANON_KEY?');
  }

  await Supabase.initialize(
    url: dbUrl,
    anonKey: anonKey,
    headers: {'Content-Type': 'application/json'},
    debug: kDebugMode,
  );
}

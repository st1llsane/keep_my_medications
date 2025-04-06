import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> initSupabase() async {
  final String? dbUrl = dotenv.env['DB_URL'];
  final String? anonKey = dotenv.env['DB_API_KEY'];

  if (dbUrl == null || anonKey == null) {
    throw ErrorDescription('Forget to provide "DB_URL" or "DB_API_KEY?');
  }

  await Supabase.initialize(url: dbUrl, anonKey: anonKey);
}

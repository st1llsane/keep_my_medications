import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> initSupabase() async {
  await dotenv.load();

  final String? dbUrl = dotenv.env['DB_URL'];
  final String? anonKey = dotenv.env['ANON_KEY'];

  if (dbUrl == null || anonKey == null) {
    throw ErrorDescription('Forget to provide "dbUrl" or "anonKey?');
  }

  await Supabase.initialize(
    url: dbUrl,
    anonKey: anonKey,
  );
}

final db = Supabase.instance.client;

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:keep_my_notes/bootstrap/my_app.dart';
import 'package:keep_my_notes/config/supabase.dart';

/// Точка входа в проект.
Future<void> main() async {
  await dotenv.load();
  await initSupabase();
  runApp(const MyApp());
}

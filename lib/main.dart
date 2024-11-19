import 'package:flutter/material.dart';
import 'package:keep_my_notes/my_app.dart';
import 'package:keep_my_notes/supabase.dart';

Future<void> main() async {
  await initSupabase();

  runApp(const MyApp());
}

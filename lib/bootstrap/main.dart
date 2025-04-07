import 'package:flutter/material.dart';
import 'package:keep_my_notes/bootstrap/app_initializer.dart';
import 'package:keep_my_notes/bootstrap/keep_my_notes.dart';

/// Точка входа в приложение.
Future<void> main() async {
  await AppInitializer.initialize();
  runApp(const KeepMyNotes());
}

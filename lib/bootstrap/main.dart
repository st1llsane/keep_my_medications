import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:keep_my_notes/bootstrap/app_initializer.dart';
import 'package:keep_my_notes/bootstrap/app.dart';

/// Точка входа в приложение.
Future<void> main() async {
  await AppInitializer.initialize();
  runApp(const ProviderScope(child: App()));
}

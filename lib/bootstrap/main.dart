import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:keep_my_notes/bootstrap/app.dart';
import 'package:keep_my_notes/bootstrap/app_initializer.dart';
import 'package:keep_my_notes/config/get_it_config.dart';

/// Точка входа в приложение.
Future<void> main() async {
  await AppInitializer.initialize();
  setupDependencies();
  runApp(const ProviderScope(child: App()));
}

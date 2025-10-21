import 'package:flutter/material.dart';
import 'package:keep_my_notes/bootstrap/app.dart';
import 'package:keep_my_notes/bootstrap/app_initializer.dart';

Future<void> main() async {
  await AppInitializer.initialize();
  runApp(const App());
}

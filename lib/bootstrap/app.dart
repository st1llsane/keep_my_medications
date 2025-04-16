import 'package:flutter/material.dart';
import 'package:keep_my_notes/pages/home_page.dart';
import 'package:keep_my_notes/shared/theme/app_theme_data.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemeData.light,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

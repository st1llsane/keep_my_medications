import 'package:flutter/material.dart';
import 'package:keep_my_notes/router/router_config.dart';
import 'package:keep_my_notes/shared/theme/app_theme_data.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppThemeData.theme,
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}

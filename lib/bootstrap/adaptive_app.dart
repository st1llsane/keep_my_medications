import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keep_my_notes/app/router/router.dart';
import 'package:keep_my_notes/app/shared/theme/app_theme_data.dart';

class AdaptiveApp extends StatelessWidget {
  const AdaptiveApp({this.debugShowCheckedModeBanner = false, super.key});

  final bool debugShowCheckedModeBanner;

  @override
  Widget build(BuildContext context) {
    final cupertinoApp = CupertinoApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: debugShowCheckedModeBanner,
    );

    final materialApp = MaterialApp.router(
      theme: AppThemeData.theme,
      routerConfig: router,
      debugShowCheckedModeBanner: debugShowCheckedModeBanner,
    );

    return Platform.isIOS ? cupertinoApp : materialApp;
  }
}

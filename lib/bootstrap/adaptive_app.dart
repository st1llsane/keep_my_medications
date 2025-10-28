import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_my_notes/app/router/router.dart';
import 'package:keep_my_notes/app/shared/theme/app_theme_data.dart';
import 'package:keep_my_notes/app/shared/theme/cubit/theme_cubit.dart';
import 'package:keep_my_notes/configs/get_it_config.dart';

class AdaptiveApp extends StatelessWidget {
  const AdaptiveApp({this.debugShowCheckedModeBanner = false, super.key});

  final bool debugShowCheckedModeBanner;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeCubit>(
      create: (_) => locator<ThemeCubit>(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, themeState) {
          return MaterialApp.router(
            theme: AppThemeData.lightTheme,
            darkTheme: AppThemeData.darkTheme,
            themeMode: themeState.themeMode,
            routerConfig: router,
            debugShowCheckedModeBanner: debugShowCheckedModeBanner,
          );
        },
      ),
    );
  }
}

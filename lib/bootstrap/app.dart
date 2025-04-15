import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keep_my_notes/pages/home_page.dart';
import 'package:keep_my_notes/shared/theme/theme_colors.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        // colorScheme: ColorScheme(
        //   brightness: brightness,
        //   primary: primary,
        //   onPrimary: onPrimary,
        //   secondary: secondary,
        //   onSecondary: onSecondary,
        //   error: error,
        //   onError: onError,
        //   surface: surface,
        //   onSurface: onSurface,
        // ),
        textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.white)),
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: Colors.red,
          onPrimary: Colors.red,
          secondary: Colors.red,
          onSecondary: Colors.red,
          error: Colors.red,
          onError: Colors.red,
          surface: Colors.red,
          onSurface: Colors.white,
        ),
        scaffoldBackgroundColor: ThemeColors.background,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          titleTextStyle: TextStyle(color: ThemeColors.background),
          backgroundColor: ThemeColors.primary,
        ),
        cupertinoOverrideTheme: CupertinoThemeData(
          barBackgroundColor:
              ThemeColors
                  .primary, // Устанавливает фон для AppBar и NavigationBar
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

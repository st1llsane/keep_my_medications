import 'package:flutter/material.dart';
import 'package:keep_my_notes/app/shared/extensions/build_context_extension.dart';
import 'package:keep_my_notes/app/shared/widgets/adaptive_scaffold.dart';
import 'package:keep_my_notes/app/shared/widgets/theme_switcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      title: 'Home',
      showAppBar: true,
      child: SafeArea(
        bottom: false,
        child: Column(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            // Align(alignment: Alignment.center, child: ThemeSwitcher()),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () => context.router.pushMedications(),
                child: Text('Медикаменты'),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () => context.router.pushMood(),
                child: Text('Настроение'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

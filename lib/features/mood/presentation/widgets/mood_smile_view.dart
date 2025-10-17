import 'package:flutter/material.dart';
import 'package:keep_my_notes/app/shared/constants/assets.dart';
import 'package:keep_my_notes/app/shared/theme/theme_colors.dart';
import 'package:keep_my_notes/app/shared/theme/theme_text_styles.dart';
import 'package:keep_my_notes/features/mood/presentation/widgets/mood_level_button.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

class MoodSmileView extends StatelessWidget {
  const MoodSmileView({super.key, required this.sheetController});

  final SheetController sheetController;

  @override
  Widget build(BuildContext context) {
    final double modalHeight = sheetController.metrics?.offset ?? 0;

    return Scaffold(
      backgroundColor: ThemeColors.background,
      body: Stack(
        children: [
          Center(
            child: Column(
              spacing: 20,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.emojiBad1, width: 280, height: 280),
                Text('Плохо', style: ThemeTextStyles.bodyText14),
              ],
            ),
          ),
          Positioned(left: 0, right: 0, bottom: 40, child: MoodLevelButton()),
        ],
      ),
    );
  }
}

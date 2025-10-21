import 'package:flutter/cupertino.dart';
import 'package:keep_my_notes/app/shared/constants/assets.dart';
import 'package:keep_my_notes/app/shared/theme/theme_text_styles.dart';
import 'package:keep_my_notes/features/mood/presentation/widgets/mood_level_button.dart';

class MoodView extends StatelessWidget {
  const MoodView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Assets.emojiBad1, width: 280, height: 280),
              const Text('Плохо', style: ThemeTextStyles.bodyText14),
            ],
          ),
        ),
        Positioned(left: 0, right: 0, bottom: 40, child: MoodLevelButton()),
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:keep_my_notes/app/shared/constants/paddings.dart';
import 'package:keep_my_notes/app/shared/extensions/build_context_extension.dart';
import 'package:keep_my_notes/app/shared/theme/theme_colors.dart';
import 'package:keep_my_notes/app/shared/widgets/blurred_blobs_background.dart';
import 'package:keep_my_notes/features/mood/presentation/widgets/mood_selector.dart';

class MoodPageView extends StatelessWidget {
  const MoodPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return BlurredBlobsBackground(
      customColors: [
        ThemeColors.moodBad.withValues(alpha: 0.08),
        ThemeColors.moodBad.withValues(alpha: 0.08),
        ThemeColors.moodBad.withValues(alpha: 0.08),
        ThemeColors.moodBad.withValues(alpha: 0.05),
      ],
      child: const Column(
        children: [Padding(padding: Paddings.container, child: MoodSelector())],
      ),
    );
  }
}

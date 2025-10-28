import 'package:flutter/widgets.dart';
import 'package:keep_my_notes/app/shared/enums/mood_rating.dart';
import 'package:keep_my_notes/app/shared/theme/theme_colors.dart';

/// Creates blob colors based on mood rating.
abstract class MoodBlobColorsCreator {
  const MoodBlobColorsCreator();

  static List<Color> createBlobColors(MoodRating? rating) {
    if (rating == null) {
      // Default neutral colors when no mood is selected
      return [
        ThemeColors.moodOkay.withValues(alpha: 0.15),
        ThemeColors.moodOkay.withValues(alpha: 0.15),
        ThemeColors.moodOkay.withValues(alpha: 0.15),
        ThemeColors.moodOkay.withValues(alpha: 0.15),
      ];
    }

    final color = switch (rating) {
      MoodRating.bad => ThemeColors.moodBad,
      MoodRating.notOkay => ThemeColors.moodNotOkay,
      MoodRating.okay => ThemeColors.moodOkay,
      MoodRating.good => ThemeColors.moodGood,
      MoodRating.great => ThemeColors.moodGreat,
    };

    return [
      color.withValues(alpha: 0.15),
      color.withValues(alpha: 0.15),
      color.withValues(alpha: 0.15),
      color.withValues(alpha: 0.15),
    ];
  }
}

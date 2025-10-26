import 'package:flutter/widgets.dart';
import 'package:keep_my_notes/app/shared/enums/mood_rating.dart';
import 'package:keep_my_notes/app/shared/theme/theme_colors.dart';

abstract class MoodColorCreator {
  const MoodColorCreator();

  static Color createMoodColor(MoodRating rating) {
    return switch (rating) {
      MoodRating.bad => ThemeColors.moodBad,
      MoodRating.notOkay => ThemeColors.moodNotOkay,
      MoodRating.okay => ThemeColors.moodOkay,
      MoodRating.good => ThemeColors.moodGood,
      MoodRating.great => ThemeColors.moodGreat,
    };
  }
}

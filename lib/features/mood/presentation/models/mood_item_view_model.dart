import 'package:flutter/widgets.dart';
import 'package:keep_my_notes/app/shared/enums/mood_rating.dart';
import 'package:keep_my_notes/features/mood/presentation/utils/mood_color_creator.dart';

class MoodItemViewModel {
  const MoodItemViewModel({
    required this.name,
    required this.rating,
    required this.imagePath,
    this.isSelected = false,
  });

  final String name;
  final MoodRating rating;
  final String imagePath;
  final bool isSelected;

  Color get color => MoodColorCreator.createMoodColor(rating);

  Color get itemColor =>
      MoodColorCreator.createMoodColor(rating).withValues(alpha: .3);
}

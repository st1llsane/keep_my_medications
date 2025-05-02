import 'package:flutter/material.dart';
import 'package:keep_my_notes/features/mood/presentation/widgets/mood_level_button.dart';

class MoodLevelButtonList extends StatelessWidget {
  const MoodLevelButtonList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [MoodLevelButton()]);
  }
}

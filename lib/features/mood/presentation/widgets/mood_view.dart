import 'package:flutter/cupertino.dart';
import 'package:keep_my_notes/features/mood/presentation/widgets/mood_selector.dart';

class MoodView extends StatelessWidget {
  const MoodView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [MoodSelector()]);
  }
}

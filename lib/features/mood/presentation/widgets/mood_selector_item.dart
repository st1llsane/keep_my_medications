import 'package:flutter/material.dart';
import 'package:keep_my_notes/features/mood/presentation/models/mood_item_view_model.dart';

class MoodSelectorItem extends StatelessWidget {
  const MoodSelectorItem({required this.item, super.key});

  final MoodItemViewModel item;

  @override
  Widget build(BuildContext context) {
    return Container(child: Image.asset(item.imagePath, height: 40));
  }
}

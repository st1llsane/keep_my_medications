import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_my_notes/app/shared/theme/theme_colors.dart';
import 'package:keep_my_notes/features/mood/presentation/bloc/mood_cubit.dart';
import 'package:keep_my_notes/features/mood/presentation/widgets/mood_selector_item.dart';

class MoodSelector extends StatelessWidget {
  const MoodSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoodCubit, MoodState>(
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          alignment: AlignmentGeometry.center,
          decoration: BoxDecoration(color: ThemeColors.card),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (int i = 0; i < state.moodItems.length; i++)
                Padding(
                  padding: EdgeInsets.only(left: i == 0 ? 0 : 12),
                  child: MoodSelectorItem(item: state.moodItems[i]),
                ),
            ],
          ),
        );
      },
    );
  }
}

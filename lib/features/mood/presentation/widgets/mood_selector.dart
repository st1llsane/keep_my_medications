import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_my_notes/features/mood/presentation/bloc/mood_cubit.dart';
import 'package:keep_my_notes/features/mood/presentation/widgets/mood_selector_item.dart';

class MoodSelector extends StatefulWidget {
  const MoodSelector({super.key});

  @override
  State<MoodSelector> createState() => _MoodSelectorState();
}

class _MoodSelectorState extends State<MoodSelector> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoodCubit, MoodState>(
      builder: (context, state) {
        if (state.isFailure) {
          // TODO
          return const SizedBox.shrink();
        }

        return Container(
          decoration: BoxDecoration(),
          child: Row(
            children: [
              for (final item in state.moodItems) MoodSelectorItem(item: item),
            ],
          ),
        );
      },
    );
  }
}

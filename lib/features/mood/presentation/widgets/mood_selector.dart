import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_my_notes/app/shared/constants/paddings.dart';
import 'package:keep_my_notes/app/shared/constants/radiuses.dart';
import 'package:keep_my_notes/app/shared/extensions/build_context_extension.dart';
import 'package:keep_my_notes/features/mood/presentation/bloc/mood_cubit.dart';
import 'package:keep_my_notes/features/mood/presentation/widgets/mood_selector_item.dart';

class MoodSelector extends StatelessWidget {
  const MoodSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoodCubit, MoodState>(
      builder: (context, state) {
        return Container(
          padding: Paddings.card,
          alignment: AlignmentGeometry.center,
          decoration: BoxDecoration(
            color: context.colors.card,
            borderRadius: Radiuses.card,
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(57, 57, 57, 0.08),
                blurRadius: 12,
                spreadRadius: 0,
                offset: Offset(0, 4),
              ),
            ],
          ),
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

        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
          child: Container(
            padding: Paddings.card,
            alignment: AlignmentGeometry.center,
            decoration: BoxDecoration(
              color: context.colors.card,
              borderRadius: Radiuses.card,
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(57, 57, 57, 0.08),
                  blurRadius: 12,
                  spreadRadius: 0,
                  offset: Offset(0, 4),
                ),
              ],
            ),
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
          ),
        );
      },
    );
  }
}

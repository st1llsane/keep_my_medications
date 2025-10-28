import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_my_notes/app/shared/constants/paddings.dart';
import 'package:keep_my_notes/app/shared/widgets/blurred_blobs_background.dart';
import 'package:keep_my_notes/features/mood/presentation/bloc/mood_cubit.dart';
import 'package:keep_my_notes/features/mood/presentation/utils/mood_blob_colors_creator.dart';
import 'package:keep_my_notes/features/mood/presentation/widgets/mood_selector.dart';

class MoodPageView extends StatelessWidget {
  const MoodPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoodCubit, MoodState>(
      builder: (context, state) {
        return BlurredBlobsBackground(
          customColors: MoodBlobColorsCreator.createBlobColors(
            state.selectedMoodRating,
          ),
          child: const Column(
            children: [
              Padding(padding: Paddings.container, child: MoodSelector()),
            ],
          ),
        );
      },
    );
  }
}

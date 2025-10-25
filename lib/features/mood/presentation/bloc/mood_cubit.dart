import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:keep_my_notes/app/shared/constants/assets.dart';
import 'package:keep_my_notes/features/mood/presentation/models/mood_item_view_model.dart';

part 'mood_cubit.freezed.dart';
part 'mood_state.dart';

@injectable
class MoodCubit extends Cubit<MoodState> {
  MoodCubit() : super(const MoodState()) {
    _getMoodItems();
  }

  final List<MoodItemViewModel> _moodItems = [
    const MoodItemViewModel(name: 'bad', rating: 1, imagePath: Assets.moodBad1),
    const MoodItemViewModel(
      name: 'notOkay',
      rating: 2,
      imagePath: Assets.moodNotOkay2,
    ),
    const MoodItemViewModel(
      name: 'okay',
      rating: 3,
      imagePath: Assets.moodOkay3,
    ),
    const MoodItemViewModel(
      name: 'good',
      rating: 4,
      imagePath: Assets.moodGood4,
    ),
    const MoodItemViewModel(
      name: 'great',
      rating: 5,
      imagePath: Assets.moodGreat5,
    ),
  ];

  void _getMoodItems() {
    emit(
      state.copyWith(status: MoodStateStatus.success, moodItems: _moodItems),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_my_notes/app/shared/widgets/widgets_exports.dart';
import 'package:keep_my_notes/configs/get_it_config.dart';
import 'package:keep_my_notes/features/mood/presentation/bloc/mood_cubit.dart';
import 'package:keep_my_notes/features/mood/presentation/widgets/mood_view.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

class MoodPage extends StatefulWidget {
  const MoodPage({super.key, required this.navigator});

  final Widget navigator;

  @override
  State<MoodPage> createState() => _MoodPageState();
}

class _MoodPageState extends State<MoodPage> {
  late final SheetController _sheetController;

  @override
  void initState() {
    super.initState();
    _sheetController = SheetController();
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      title: 'Mood',
      showAppBar: true,
      child: SafeArea(
        bottom: false,
        child: BlocProvider<MoodCubit>(
          create: (_) => locator<MoodCubit>(),
          lazy: false,
          child: const MoodView(),
        ),
      ),
    );

    // return Stack(
    //   children: [
    //     MoodView(),
    //     // SheetViewport(
    //     //   child: PagedSheet(
    //     //     controller: _sheetController,
    //     //     decoration: MaterialSheetDecoration(
    //     //       size: SheetSize.fit,
    //     //       color: ThemeColors.background,
    //     //       borderRadius: ThemeRadiuses.radiusGeometry16,
    //     //       clipBehavior: Clip.antiAlias,
    //     //     ),
    //     //     navigator: widget.navigator,
    //     //   ),
    //     // ),
    //   ],
    // );
  }

  @override
  void dispose() {
    _sheetController.dispose();
    super.dispose();
  }
}

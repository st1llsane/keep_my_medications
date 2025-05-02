import 'package:flutter/material.dart';
import 'package:keep_my_notes/features/mood/presentation/widgets/mood_smile_view.dart';
import 'package:keep_my_notes/shared/theme/theme_colors.dart';
import 'package:keep_my_notes/shared/theme/theme_radiuses.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

class MoodPageOutlet extends StatefulWidget {
  const MoodPageOutlet({super.key, required this.navigator});

  final Widget navigator;

  @override
  State<MoodPageOutlet> createState() => _MoodPageOutletState();
}

class _MoodPageOutletState extends State<MoodPageOutlet> {
  late final SheetController _sheetController;

  @override
  void initState() {
    super.initState();
    _sheetController = SheetController();
  }

  @override
  void dispose() {
    _sheetController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MoodSmileView(),
        SheetViewport(
          child: PagedSheet(
            controller: _sheetController,
            decoration: MaterialSheetDecoration(
              size: SheetSize.fit,
              color: ThemeColors.background,
              borderRadius: ThemeRadiuses.radiusGeometry16,
              clipBehavior: Clip.antiAlias,
            ),
            navigator: widget.navigator,
          ),
        ),
      ],
    );
  }
}

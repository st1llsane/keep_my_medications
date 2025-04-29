import 'package:flutter/material.dart';
import 'package:keep_my_notes/shared/theme/theme_colors.dart';
import 'package:keep_my_notes/shared/theme/theme_radiuses.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

class MoodPageOutlet extends StatelessWidget {
  const MoodPageOutlet({super.key, required this.navigator});

  final Widget navigator;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Scaffold(backgroundColor: Colors.yellow),
        SheetViewport(
          child: PagedSheet(
            decoration: MaterialSheetDecoration(
              size: SheetSize.fit,
              // color: ThemeColors.background,
              color: Colors.yellow,
              borderRadius: ThemeRadiuses.radiusGeometry16,
              clipBehavior: Clip.antiAlias,
            ),
            navigator: navigator,
          ),
        ),
      ],
    );
  }
}

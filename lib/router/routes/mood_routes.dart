import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:keep_my_notes/features/mood/presentation/pages/mood_page_outlet.dart';
import 'package:keep_my_notes/features/mood/presentation/widgets/mood_tile_list.dart';
import 'package:keep_my_notes/router/routes.dart';
import 'package:keep_my_notes/shared/ui/adaptive_page.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

final ShellRoute moodRoutes = ShellRoute(
  pageBuilder:
      (context, state, navigator) => AdaptivePage(
        name: AppRoutes.moodOutlet.name,
        child: MoodPageOutlet(navigator: navigator),
      ),
  routes: [
    GoRoute(
      path: AppRoutes.mood.path,
      name: AppRoutes.mood.name,
      pageBuilder: (context, state) {
        return PagedSheetPage(
          key: state.pageKey,
          name: AppRoutes.mood.name,
          // snapGrid: const SheetSnapGrid(
          //   snaps: [SheetOffset(0.1), SheetOffset(1)],
          // ),
          // child: const _ExampleSheetContent(
          //   title: '/a',
          //   heightFactor: 0.9,
          //   destinations: ['/a/details', '/b'],
          // ),
          child: MoodTileList(),
        );
      },
    ),
    GoRoute(
      path: '/test-2',
      name: 'test-2',
      pageBuilder: (context, state) {
        return PagedSheetPage(
          key: state.pageKey,
          name: 'test-2',
          snapGrid: const SheetSnapGrid(
            snaps: [SheetOffset(0.5), SheetOffset(1)],
          ),
          child: const _ExampleSheetContent(
            title: '/a',
            heightFactor: 0.8,
            destinations: ['/a/details', '/b'],
          ),
        );
      },
    ),
  ],
);

class Parent extends StatelessWidget {
  const Parent({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.yellow)),
          Expanded(child: child),
        ],
      ),
    );
  }
}

class _ExampleSheetContent extends StatelessWidget {
  const _ExampleSheetContent({
    required this.title,
    required this.heightFactor,
    required this.destinations,
  });

  final String title;
  final double heightFactor;
  final List<String> destinations;

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).colorScheme.onSecondaryContainer;
    final textStyle = Theme.of(context).textTheme.displayMedium?.copyWith(
      fontWeight: FontWeight.bold,
      color: textColor,
    );

    // Tips: You can use SheetMediaQuery to get the layout information of the sheet
    // in the build method, such as the size of the viewport where the sheet is rendered.
    final sheetLayoutSpec = SheetMediaQuery.layoutSpecOf(context);

    return Container(
      color: Theme.of(context).colorScheme.secondaryContainer,
      width: double.infinity,
      height: sheetLayoutSpec.viewportSize.height * heightFactor,
      child: SafeArea(
        child: Column(
          children: [
            Expanded(child: Center(child: Text(title, style: textStyle))),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (final dest in destinations)
                  TextButton(
                    style: TextButton.styleFrom(foregroundColor: textColor),
                    onPressed: () => context.go(dest),
                    child: Text('Go To $dest'),
                  ),
                TextButton(
                  onPressed: () => context.push('/test-2'),
                  child: Text('TEST 2'),
                ),
                TextButton(onPressed: () => context.pop(), child: Text('POP')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

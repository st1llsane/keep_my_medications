import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

final ShellRoute testShell = ShellRoute(
  // builder: (context, state, child) => Parent(child: child),
  builder: (context, state, child) => _ExampleHome(nestedNavigator: child),
  routes: [
    GoRoute(
      path: '/test1',
      name: 'test1',
      // builder: (context, state) => Test1(),
      pageBuilder: (context, state) {
        // return PagedSheetPage(child: Test1());
        return PagedSheetPage(
          key: state.pageKey,
          snapGrid: const SheetSnapGrid(
            snaps: [SheetOffset(0.8), SheetOffset(1)],
          ),
          child: const _ExampleSheetContent(
            title: '/a',
            heightFactor: 0.5,
            destinations: ['/a/details', '/b'],
          ),
        );
      },
    ),
    GoRoute(
      path: '/test2',
      name: 'test2',
      pageBuilder: (context, state) => PagedSheetPage(child: Test2()),
    ),
  ],
);

class _ExampleHome extends StatelessWidget {
  const _ExampleHome({required this.nestedNavigator});

  final Widget nestedNavigator;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Scaffold(backgroundColor: Colors.yellow),
        SheetViewport(child: _ExampleSheet(nestedNavigator: nestedNavigator)),
      ],
    );
  }
}

class _ExampleSheet extends StatelessWidget {
  const _ExampleSheet({required this.nestedNavigator});

  final Widget nestedNavigator;

  @override
  Widget build(BuildContext context) {
    return PagedSheet(
      decoration: MaterialSheetDecoration(
        size: SheetSize.stretch,
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(16),
        clipBehavior: Clip.antiAlias,
      ),
      navigator: nestedNavigator,
    );
  }
}

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

class Test1 extends StatelessWidget {
  const Test1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        children: [
          TextButton(
            onPressed: () => context.goNamed('test2'),
            child: Text('TEST 2'),
          ),
          TextButton(onPressed: () => context.pop(), child: Text('POP')),
        ],
      ),
    );
  }
}

class Test2 extends StatelessWidget {
  const Test2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: TextButton(
        onPressed: () => context.goNamed('test1'),
        child: Text('TEST 1'),
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
                TextButton(onPressed: () => context.pop(), child: Text('POP')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

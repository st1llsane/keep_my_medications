import 'package:flutter/material.dart';

class SheetContent extends StatelessWidget {
  const SheetContent({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.secondaryContainer,
      width: double.infinity,
      // height: sheetLayoutSpec.viewportSize.height * heightFactor,
      child: SafeArea(
        top: false,
        child: child,
        // child: Column(
        //   children: [
        //     Expanded(child: Center(child: Text(title, style: textStyle))),
        //     Column(
        //       mainAxisSize: MainAxisSize.min,
        //       children: [
        //         for (final dest in destinations)
        //           TextButton(
        //             style: TextButton.styleFrom(foregroundColor: textColor),
        //             onPressed: () => context.go(dest),
        //             child: Text('Go To $dest'),
        //           ),
        //         TextButton(
        //           onPressed: () => context.push('/test-2'),
        //           child: Text('TEST 2'),
        //         ),
        //         TextButton(onPressed: () => context.pop(), child: Text('POP')),
        //       ],
        //     ),
        //   ],
        // ),
      ),
    );
  }
}

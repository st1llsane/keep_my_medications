import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keep_my_notes/app/shared/extensions/build_context_extension.dart';

// class AdaptiveNavBar extends StatelessWidget implements PreferredSizeWidget {
//   const AdaptiveNavBar({super.key, required this.title});

//   final String title;

//   @override
//   Size get preferredSize =>
//       const Size.fromHeight(kMinInteractiveDimensionCupertino);

//   @override
//   Widget build(BuildContext context) {
//     return Platform.isIOS
//         ? CupertinoNavBar(title: title)
//         : MaterialNavBar(title: title);
//   }
// }

abstract class AdaptiveAppBar {
  factory AdaptiveAppBar({required String title}) {
    return Platform.isIOS
        ? CupertinoNavBar(title: title)
        : MaterialNavBar(title: title);
  }
}

abstract class _NavBar extends StatelessWidget {
  const _NavBar({required this.title, super.key});

  final String title;
}

class CupertinoNavBar extends _NavBar implements AdaptiveAppBar {
  const CupertinoNavBar({required super.title, super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      middle: Text(title, style: context.textTheme.titleMedium),
      previousPageTitle: 'Назад',
      padding: const EdgeInsetsDirectional.only(bottom: 8),
      border: Border(
        bottom: BorderSide(width: 1, color: context.colors.border),
      ),
    );
  }
}

class MaterialNavBar extends _NavBar implements AdaptiveAppBar {
  const MaterialNavBar({required super.title, super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text(title, style: context.textTheme.titleMedium));
  }
}

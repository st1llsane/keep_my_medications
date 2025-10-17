import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keep_my_notes/app/shared/extensions/build_context_extension.dart';
import 'package:keep_my_notes/app/shared/theme/theme_colors.dart';

class AdaptiveNavBar extends StatelessWidget implements PreferredSizeWidget {
  const AdaptiveNavBar({super.key, required this.title});

  final String title;

  @override
  Size get preferredSize =>
      const Size.fromHeight(kMinInteractiveDimensionCupertino);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoNavBar(title: title)
        : MaterialNavBar(title: title);
  }
}

abstract class NavBar extends StatelessWidget {
  const NavBar({super.key, required this.title});

  final String title;
}

class CupertinoNavBar extends NavBar {
  const CupertinoNavBar({super.key, required super.title});

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      middle: Text(title, style: context.textTheme.titleMedium),
      previousPageTitle: 'Назад',
      padding: const EdgeInsetsDirectional.only(bottom: 8),
      border: const Border(
        bottom: BorderSide(width: 1, color: ThemeColors.border),
      ),
    );
  }
}

class MaterialNavBar extends NavBar {
  const MaterialNavBar({super.key, required super.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text(title, style: context.textTheme.titleMedium));
  }
}

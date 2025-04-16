import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keep_my_notes/shared/theme/theme_colors.dart';
import 'package:keep_my_notes/shared/theme/theme_text_styles.dart';

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
      middle: Text(title, style: ThemeTextStyles.headingM),
      previousPageTitle: 'Назад',
      padding: const EdgeInsetsDirectional.only(bottom: 8),
      border: const Border(
        bottom: BorderSide(width: 1, color: ThemeColors.secondary),
      ),
    );
  }
}

class MaterialNavBar extends NavBar {
  const MaterialNavBar({super.key, required super.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text(title, style: ThemeTextStyles.headingM));
  }
}

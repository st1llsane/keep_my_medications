import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveNavBar extends StatelessWidget implements PreferredSizeWidget {
  const AdaptiveNavBar({super.key});

  @override
  Size get preferredSize =>
      const Size.fromHeight(kMinInteractiveDimensionCupertino);

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid ? MaterialNavBar() : CupertinoNavBar();
  }
}

class MaterialNavBar extends StatelessWidget {
  const MaterialNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text('Препараты'));
  }
}

class CupertinoNavBar extends StatelessWidget {
  const CupertinoNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      middle: Text('Препараты'),
      previousPageTitle: 'Назад',
    );
  }
}

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keep_my_notes/app/shared/extensions/extensions_exports.dart';

abstract class AdaptiveScaffold extends StatelessWidget {
  factory AdaptiveScaffold({
    required Widget child,
    String? title,
    String? previousPageTitle,
    bool showAppBar = false,
  }) {
    assert(
      (title == null && previousPageTitle == null) || showAppBar,
      'If [title] or [previousPageTitle] is provided, [showAppBar] must be true.',
    );
    assert(
      !showAppBar || title != null,
      'If [showAppBar] is `true`, [title] must be not null.',
    );

    return Platform.isIOS
        ? _CupertinoScaffold(
            title: title,
            previousPageTitle: previousPageTitle,
            showAppBar: showAppBar,
            child: child,
          )
        : _MaterialScaffold(
            title: title,
            previousPageTitle: previousPageTitle,
            showAppBar: showAppBar,
            child: child,
          );
  }
}

class _CupertinoScaffold extends StatelessWidget implements AdaptiveScaffold {
  const _CupertinoScaffold({
    required this.child,
    this.title,
    this.previousPageTitle,
    required this.showAppBar,
  });

  final Widget child;
  final String? title;
  final String? previousPageTitle;
  final bool showAppBar;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: showAppBar
          ? CupertinoNavigationBar(
              middle: title != null ? Text(title!) : null,
              previousPageTitle: previousPageTitle ?? 'Назад',
              padding: const EdgeInsetsDirectional.only(bottom: 8),
              border: const Border(
                bottom: BorderSide(width: 1, color: Colors.grey),
              ),
            )
          : null,
      child: child,
    );
  }
}

class _MaterialScaffold extends StatelessWidget implements AdaptiveScaffold {
  const _MaterialScaffold({
    required this.child,
    this.title,
    this.previousPageTitle,
    required this.showAppBar,
  });

  final Widget child;
  final String? title;
  final String? previousPageTitle;
  final bool showAppBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar
          ? AppBar(title: Text(title!, style: context.textTheme.titleMedium))
          : null,
      body: child,
    );
  }
}

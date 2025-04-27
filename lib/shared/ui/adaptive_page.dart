import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptivePage extends Page {
  const AdaptivePage({required this.builder});

  final Widget Function(BuildContext) builder;

  @override
  Route createRoute(BuildContext context) {
    return Platform.isIOS
        ? CupertinoPageRoute(settings: this, builder: builder)
        : MaterialPageRoute(settings: this, builder: builder);
  }
}

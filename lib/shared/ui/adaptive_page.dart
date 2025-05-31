import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class AdaptivePage extends Page {
  factory AdaptivePage({required String name, required Widget child}) {
    return Platform.isIOS
        ? _CupertinoAdaptivePage(name: name, child: child)
        : _MaterialAdaptivePage(name: name, child: child);
  }
}

class _MaterialAdaptivePage extends MaterialPage implements AdaptivePage {
  _MaterialAdaptivePage({required super.name, required super.child})
    : super(key: ValueKey(name));
}

class _CupertinoAdaptivePage extends CupertinoPage implements AdaptivePage {
  _CupertinoAdaptivePage({required super.name, required super.child})
    : super(key: ValueKey(name));
}

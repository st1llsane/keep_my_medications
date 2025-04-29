import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class AdaptivePage extends Page {
//   const AdaptivePage({required this.builder});

//   final Widget Function(BuildContext) builder;

//   @override
//   Route createRoute(BuildContext context) {
//     return Platform.isIOS
//         ? CupertinoPageRoute(settings: this, builder: builder)
//         : MaterialPageRoute(settings: this, builder: builder);
//   }
// }

abstract class AdaptivePage extends Page {
  factory AdaptivePage({required String name, required Widget child}) {
    if (Platform.isIOS) {
      return _CupertinoAdaptivePage(name: name, child: child);
    } else {
      return _MaterialAdaptivePage(name: name, child: child);
    }
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

import 'package:flutter/widgets.dart';
import 'package:keep_my_notes/app/shared/constants/sizes.dart';

abstract class Paddings {
  /// 2.0
  static const x1 = EdgeInsets.all(Sizes.x1);

  /// 4.0
  static const x2 = EdgeInsets.all(Sizes.x2);

  /// 8.0
  static const x4 = EdgeInsets.all(Sizes.x4);

  /// 10.0
  static const x5 = EdgeInsets.all(Sizes.x5);

  /// 12.0
  static const x6 = EdgeInsets.all(Sizes.x6);

  /// 16.0
  static const x8 = EdgeInsets.all(Sizes.x8);

  /// 20.0
  static const x10 = EdgeInsets.all(Sizes.x10);

  /// 16.0
  static const container = EdgeInsets.all(Sizes.container);

  static const card = EdgeInsets.symmetric(
    horizontal: Sizes.x8,
    vertical: Sizes.x12,
  );
}

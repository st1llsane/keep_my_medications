import 'package:flutter/material.dart';

class AnimatedScale extends StatefulWidget {
  const AnimatedScale({super.key});

  @override
  State<AnimatedScale> createState() => _AnimatedScaleState();
}

class _AnimatedScaleState extends State<AnimatedScale>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Durations.short3,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

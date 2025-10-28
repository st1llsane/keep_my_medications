import 'package:flutter/material.dart';

class AnimatedScale extends StatefulWidget {
  const AnimatedScale({super.key, required this.builder, this.child});

  final Widget Function(AnimationController controller, Widget? child) builder;
  final Widget? child;

  @override
  State<AnimatedScale> createState() => _AnimatedScaleState();
}

class _AnimatedScaleState extends State<AnimatedScale>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Durations.short3,
      vsync: this,
    );
    _scaleAnimation = Tween<double>(begin: 1, end: 1.18).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _scaleAnimation,
      builder: (context, child) {
        return Transform.scale(
          scale: _scaleAnimation.value,
          child: widget.builder(_animationController, child),
        );
      },
      child: widget.child,
    );
  }
}

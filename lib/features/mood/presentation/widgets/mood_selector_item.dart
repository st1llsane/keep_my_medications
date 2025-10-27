import 'package:flutter/material.dart';
import 'package:keep_my_notes/app/shared/theme/theme_colors.dart';
import 'package:keep_my_notes/features/mood/presentation/models/mood_item_view_model.dart';

class MoodSelectorItem extends StatefulWidget {
  const MoodSelectorItem({required this.item, super.key});

  final MoodItemViewModel item;

  @override
  State<MoodSelectorItem> createState() => _MoodSelectorItemState();
}

class _MoodSelectorItemState extends State<MoodSelectorItem>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _scaleAnimation;

  MoodItemViewModel get item => widget.item;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Durations.short4,
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
          child: GestureDetector(
            onTapDown: (_) {
              _animationController.forward().then((_) {
                _animationController.reverse();
              });
            },
            child: Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: item.itemColor,
                border: Border.all(
                  color: item.isSelected
                      ? ThemeColors.accent1
                      : ThemeColors.card,
                  width: 2,
                ),
              ),
              child: Center(child: Image.asset(height: 32, item.imagePath)),
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}

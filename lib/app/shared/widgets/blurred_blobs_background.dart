import 'dart:ui';

import 'package:flutter/material.dart';

/// Widget that creates a blurred background effect with colored blobs
/// and animated color transitions.
class BlurredBlobsBackground extends StatefulWidget {
  const BlurredBlobsBackground({
    super.key,
    this.blurAmount = 100.0,
    this.customColors,
    required this.child,
  });

  final double blurAmount;
  final List<Color>? customColors;
  final Widget child;

  @override
  State<BlurredBlobsBackground> createState() => _BlurredBlobsBackgroundState();
}

class _BlurredBlobsBackgroundState extends State<BlurredBlobsBackground>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  List<Color> _previousColors = [];
  List<Color> _targetColors = [];

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );

    _targetColors =
        widget.customColors ??
        [
          Colors.purple.withValues(alpha: 0.15),
          Colors.blue.withValues(alpha: 0.15),
          Colors.pink.withValues(alpha: 0.15),
          Colors.orange.withValues(alpha: 0.15),
        ];
    _previousColors = _targetColors;
  }

  @override
  void didUpdateWidget(BlurredBlobsBackground oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.customColors != oldWidget.customColors) {
      _previousColors = _targetColors;
      _targetColors = widget.customColors ?? _targetColors;
      _animationController.forward(from: 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      clipBehavior: Clip.hardEdge,
      child: Stack(
        children: [
          // Background blobs with animated colors
          Positioned.fill(
            child: AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                final interpolatedColors = List.generate(_targetColors.length, (
                  index,
                ) {
                  if (index >= _previousColors.length) {
                    return _targetColors[index];
                  }

                  return Color.lerp(
                    _previousColors[index],
                    _targetColors[index],
                    _animationController.value,
                  )!;
                });

                return CustomPaint(
                  painter: _BlurredBackgroundPainter(
                    colors: interpolatedColors,
                  ),
                );
              },
            ),
          ),
          // Blur effect
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: widget.blurAmount,
              sigmaY: widget.blurAmount,
            ),
            child: widget.child,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}

/// Custom painter for drawing colored blobs.
class _BlurredBackgroundPainter extends CustomPainter {
  _BlurredBackgroundPainter({required this.colors});

  final List<Color> colors;

  @override
  void paint(Canvas canvas, Size size) {
    // Define blob positions and sizes
    final blobs = [
      _Blob(
        offset: Offset(size.width * 0.15, size.height * 0.15),
        radius: size.width * 0.35,
        color: colors.isNotEmpty ? colors[0] : Colors.purple,
      ),
      _Blob(
        offset: Offset(size.width * 0.85, size.height * 0.35),
        radius: size.width * 0.4,
        color: colors.length > 1 ? colors[1] : Colors.blue,
      ),
      _Blob(
        offset: Offset(size.width * 0.2, size.height * 0.7),
        radius: size.width * 0.45,
        color: colors.length > 2 ? colors[2] : Colors.pink,
      ),
      _Blob(
        offset: Offset(size.width * 0.85, size.height * 0.9),
        radius: size.width * 0.3,
        color: colors.length > 3 ? colors[3] : Colors.orange,
      ),
    ];

    for (final blob in blobs) {
      final paint = Paint()
        ..color = blob.color
        ..style = PaintingStyle.fill;

      canvas.drawCircle(blob.offset, blob.radius, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

/// Data class for blob properties
class _Blob {
  _Blob({required this.offset, required this.radius, required this.color});

  final Offset offset;
  final double radius;
  final Color color;
}

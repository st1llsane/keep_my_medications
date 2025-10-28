import 'package:flutter/material.dart';
import 'package:keep_my_notes/app/shared/extensions/build_context_extension.dart';
import 'package:keep_my_notes/app/shared/theme/theme_colors.dart';
import 'package:keep_my_notes/app/shared/widgets/theme_switcher.dart';

/// Demo page to showcase theme switching functionality
class ThemeDemoPage extends StatelessWidget {
  const ThemeDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Demo'),
        actions: const [ThemeSwitcherIconButton(), SizedBox(width: 16)],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Theme Switcher Card
            _buildCard(
              context,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Theme Switcher', style: context.textTheme.titleMedium),
                  const SizedBox(height: 16),
                  const Center(child: ThemeSwitcher()),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Colors Demo
            _buildCard(
              context,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Theme Colors', style: context.textTheme.titleMedium),
                  const SizedBox(height: 16),
                  _colorItem(context, 'Background', context.colors.background),
                  _colorItem(context, 'Foreground', context.colors.foreground),
                  _colorItem(context, 'Primary', context.colors.primary),
                  _colorItem(context, 'Secondary', context.colors.secondary),
                  _colorItem(context, 'Card', context.colors.card),
                  _colorItem(context, 'Border', context.colors.border),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Accent Colors
            _buildCard(
              context,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Accent Colors', style: context.textTheme.titleMedium),
                  const SizedBox(height: 16),
                  _colorItem(context, 'Accent 1', context.colors.accent1),
                  _colorItem(context, 'Accent 2', context.colors.accent2),
                  _colorItem(context, 'Accent 3', context.colors.accent3),
                  _colorItem(context, 'Accent 4', context.colors.accent4),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Mood Colors
            _buildCard(
              context,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Mood Colors', style: context.textTheme.titleMedium),
                  const SizedBox(height: 16),
                  _colorItem(context, 'Bad', ThemeColors.moodBad),
                  _colorItem(context, 'Not Okay', ThemeColors.moodNotOkay),
                  _colorItem(context, 'Okay', ThemeColors.moodOkay),
                  _colorItem(context, 'Good', ThemeColors.moodGood),
                  _colorItem(context, 'Great', ThemeColors.moodGreat),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Text Styles Demo
            _buildCard(
              context,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Text Styles', style: context.textTheme.titleMedium),
                  const SizedBox(height: 16),
                  Text('Body Small', style: context.textTheme.bodySmall),
                  const SizedBox(height: 8),
                  Text('Body Medium', style: context.textTheme.bodyMedium),
                  const SizedBox(height: 8),
                  Text('Body Large', style: context.textTheme.bodyLarge),
                  const SizedBox(height: 8),
                  Text(
                    'Headline Small',
                    style: context.textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Headline Medium',
                    style: context.textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Headline Large',
                    style: context.textTheme.headlineLarge,
                  ),
                  const SizedBox(height: 8),
                  Text('Title Small', style: context.textTheme.titleSmall),
                  const SizedBox(height: 8),
                  Text('Title Medium', style: context.textTheme.titleMedium),
                  const SizedBox(height: 8),
                  Text('Title Large', style: context.textTheme.titleLarge),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context, {required Widget child}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.colors.card,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: context.colors.border),
      ),
      child: child,
    );
  }

  Widget _colorItem(BuildContext context, String name, Color color) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: context.colors.border),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: context.textTheme.bodyLarge),
                Text(
                  _colorToHex(color),
                  style: context.textTheme.bodySmall?.copyWith(
                    color: context.colors.foregroundSecondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _colorToHex(Color color) {
    return '#${color.r.toInt().toRadixString(16).padLeft(2, '0').toUpperCase()}'
        '${color.g.toInt().toRadixString(16).padLeft(2, '0').toUpperCase()}'
        '${color.b.toInt().toRadixString(16).padLeft(2, '0').toUpperCase()}';
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_my_notes/app/shared/extensions/build_context_extension.dart';
import 'package:keep_my_notes/app/shared/theme/cubit/theme_cubit.dart';

/// Widget for switching between light and dark themes
class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Row(
          spacing: 8,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.light_mode,
              color: context.colors.foregroundSecondary,
              size: 20,
            ),
            Switch(
              value: state.isDarkMode,
              onChanged: (_) {
                context.read<ThemeCubit>().toggleTheme();
              },
              activeThumbColor: context.colors.primary,
            ),
            Icon(
              Icons.dark_mode,
              color: context.colors.foregroundSecondary,
              size: 20,
            ),
          ],
        );
      },
    );
  }
}

/// Simple icon button for theme switching
class ThemeSwitcherIconButton extends StatelessWidget {
  const ThemeSwitcherIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return IconButton(
          icon: Icon(
            state.isDarkMode ? Icons.light_mode : Icons.dark_mode,
            color: context.colors.foreground,
          ),
          onPressed: () {
            context.read<ThemeCubit>().toggleTheme();
          },
        );
      },
    );
  }
}

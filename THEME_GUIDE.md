# Theme System Guide

This guide explains how to use the theme system in the application.

## Overview

The application supports both light and dark themes with automatic 
switching capabilities.

## Architecture

- `ThemeCubit` - State management for theme switching
- `ThemeColors` - Abstract base class for theme colors
- `LightThemeColors` - Light theme color palette
- `DarkThemeColors` - Dark theme color palette
- `AppThemeData` - Theme configuration builder

## Usage

### 1. Accessing Theme Colors

Use the `ThemeExtension` to access theme colors from any widget:

```dart
import 'package:keep_my_notes/app/shared/extensions/theme_extension.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.background,
      child: Text(
        'Hello',
        style: TextStyle(color: context.colors.foreground),
      ),
    );
  }
}
```

### 2. Switching Themes

#### Using ThemeSwitcher Widget

```dart
import 'package:keep_my_notes/app/shared/widgets/theme_switcher.dart';

// In your settings page or app bar
AppBar(
  actions: [
    ThemeSwitcherIconButton(),
  ],
)

// Or as a setting item
ListTile(
  title: Text('Theme'),
  trailing: ThemeSwitcher(),
)
```

#### Using ThemeCubit Directly

```dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_my_notes/app/shared/theme/cubit/theme_cubit.dart';

// Toggle between light and dark
context.read<ThemeCubit>().toggleTheme();

// Set specific theme
context.read<ThemeCubit>().setThemeMode(ThemeMode.dark);

// Use system theme
context.read<ThemeCubit>().setSystemTheme();
```

### 3. Checking Current Theme

```dart
import 'package:keep_my_notes/app/shared/extensions/theme_extension.dart';

if (context.isDarkMode) {
  // Dark theme is active
}

if (context.isLightMode) {
  // Light theme is active
}
```

### 4. Available Colors

Both light and dark themes provide the following colors:

- `background` - Main background color
- `foreground` - Main text color
- `foregroundSecondary` - Secondary text color
- `primary` - Primary brand color
- `secondary` - Secondary UI color
- `card` - Card background color
- `accent1` - Success/positive accent
- `accent1Light` - Light variant of accent1
- `accent2` - Warning accent
- `accent2Light` - Light variant of accent2
- `accent3` - Info/special accent
- `accent3Light` - Light variant of accent3
- `accent4` - Error/danger accent
- `accent4Light` - Light variant of accent4
- `border` - Border color
- `success` - Success indicator color

Mood colors (static, same for both themes):
- `ThemeColors.moodBad`
- `ThemeColors.moodNotOkay`
- `ThemeColors.moodOkay`
- `ThemeColors.moodGood`
- `ThemeColors.moodGreat`

## Adding New Colors

To add new colors to the theme system:

1. Add the color getter to `ThemeColors` abstract class
2. Implement the color in `LightThemeColors`
3. Implement the color in `DarkThemeColors`

Example:

```dart
// In theme_colors.dart

abstract class ThemeColors {
  // ... existing colors
  Color get myNewColor;
}

class LightThemeColors extends ThemeColors {
  // ... existing colors
  @override
  Color get myNewColor => const Color(0xFF123456);
}

class DarkThemeColors extends ThemeColors {
  // ... existing colors
  @override
  Color get myNewColor => const Color(0xFF654321);
}
```

## Future Enhancements

Consider implementing:

- Persistent theme storage using `shared_preferences`
- Custom theme colors (allow users to pick colors)
- Multiple preset themes
- Automatic theme switching based on time of day


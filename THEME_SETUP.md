# Настройка системы тем

Система тем успешно настроена! Теперь ваше приложение поддерживает переключение между светлой и тёмной темой.

## 🎨 Что было сделано

1. ✅ Создан `ThemeCubit` для управления состоянием темы
2. ✅ Обновлена система цветов с поддержкой `LightThemeColors` и `DarkThemeColors`
3. ✅ Обновлена конфигурация тем в `AppThemeData`
4. ✅ Интегрирован ThemeCubit в `AdaptiveApp`
5. ✅ Созданы виджеты для переключения темы
6. ✅ Добавлено extension для удобного доступа к цветам
7. ✅ Упрощён `AdaptiveApp` для использования `MaterialApp` на всех платформах

## 🚀 Как использовать

### Переключение темы в UI

Добавьте переключатель темы в любую страницу:

```dart
import 'package:keep_my_notes/app/shared/widgets/theme_switcher.dart';

// Вариант 1: Кнопка-иконка (для AppBar)
AppBar(
  actions: [
    ThemeSwitcherIconButton(),
  ],
)

// Вариант 2: Полный переключатель (для настроек)
ListTile(
  title: Text('Тема приложения'),
  trailing: ThemeSwitcher(),
)
```

### Доступ к цветам темы

Используйте extension для доступа к текущим цветам:

```dart
import 'package:keep_my_notes/app/shared/extensions/build_context_extension.dart';

// В любом виджете
Container(
  color: context.colors.background,
  child: Text(
    'Привет',
    style: TextStyle(color: context.colors.foreground),
  ),
)
```

### Программное управление темой

```dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_my_notes/app/shared/theme/cubit/theme_cubit.dart';

// Переключить тему
context.read<ThemeCubit>().toggleTheme();

// Установить конкретную тему
context.read<ThemeCubit>().setThemeMode(ThemeMode.dark);
context.read<ThemeCubit>().setThemeMode(ThemeMode.light);

// Использовать системную тему
context.read<ThemeCubit>().setSystemTheme();
```

### Проверка текущей темы

```dart
if (context.isDarkMode) {
  // Тёмная тема активна
}

if (context.isLightMode) {
  // Светлая тема активна
}
```

## 🧪 Тестирование

Для тестирования системы тем создана демо-страница:

```dart
import 'package:keep_my_notes/app/shared/widgets/theme_demo_page.dart';

// Добавьте в роутер или откройте напрямую
Navigator.push(
  context,
  MaterialPageRoute(builder: (_) => ThemeDemoPage()),
);
```

## 📋 Доступные цвета

### Основные цвета
- `background` - фон приложения
- `foreground` - основной цвет текста
- `foregroundSecondary` - вторичный цвет текста
- `primary` - основной акцентный цвет
- `secondary` - вторичный цвет UI
- `card` - фон карточек
- `border` - цвет границ
- `success` - цвет успеха

### Акцентные цвета
- `accent1` / `accent1Light` - зелёный (успех/позитив)
- `accent2` / `accent2Light` - жёлтый (предупреждение)
- `accent3` / `accent3Light` - фиолетовый (информация)
- `accent4` / `accent4Light` - красный (ошибка/опасность)

### Цвета настроения
- `ThemeColors.moodBad` - плохое настроение
- `ThemeColors.moodNotOkay` - не очень хорошее
- `ThemeColors.moodOkay` - нормальное
- `ThemeColors.moodGood` - хорошее
- `ThemeColors.moodGreat` - отличное

## 🔧 Добавление новых цветов

1. Добавьте getter в `ThemeColors` (абстрактный класс)
2. Реализуйте цвет в `LightThemeColors`
3. Реализуйте цвет в `DarkThemeColors`

Пример:

```dart
// В theme_colors.dart

abstract class ThemeColors {
  // ... существующие цвета
  Color get myNewColor;
}

class LightThemeColors extends ThemeColors {
  // ... существующие цвета
  @override
  Color get myNewColor => const Color(0xFF123456);
}

class DarkThemeColors extends ThemeColors {
  // ... существующие цвета
  @override
  Color get myNewColor => const Color(0xFF654321);
}
```

## 📚 Дополнительная информация

Подробное руководство находится в файле:
`lib/app/shared/theme/THEME_GUIDE.md`

## ⚡ Следующие шаги

Рекомендуется добавить:

1. **Сохранение выбранной темы** (используйте `shared_preferences`)
   ```dart
   // В ThemeCubit
   Future<void> toggleTheme() async {
     final newMode = state.themeMode == ThemeMode.light
         ? ThemeMode.dark
         : ThemeMode.light;
     emit(state.copyWith(themeMode: newMode));
     await _saveThemePreference(newMode);
   }
   ```

2. **Автоматическое переключение по времени суток**
3. **Дополнительные цветовые схемы**
4. **Анимация перехода между темами**

---

Теперь ваше приложение полностью поддерживает систему тем! 🎉


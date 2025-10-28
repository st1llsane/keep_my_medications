# 🎨 Быстрый старт: Система тем

## ✅ Что готово

Система тем полностью настроена и работает! Теперь в приложении есть:
- 🌞 Светлая тема
- 🌙 Тёмная тема
- ⚡ Переключение между темами
- 🎯 Удобный доступ к цветам через `context.colors`

## 🚀 Как использовать ПРЯМО СЕЙЧАС

### 1. Добавьте кнопку переключения темы

Откройте любую страницу (например, `home_page.dart`) и добавьте:

```dart
import 'package:keep_my_notes/app/shared/widgets/theme_switcher.dart';

// В AppBar:
AppBar(
  title: Text('Моё приложение'),
  actions: [
    ThemeSwitcherIconButton(), // 👈 Добавьте эту строку
  ],
)
```

### 2. Используйте цвета темы

Везде, где сейчас используются статические цвета, замените на:

```dart
import 'package:keep_my_notes/app/shared/extensions/build_context_extension.dart';

// Было:
Container(color: ThemeColors.background)

// Стало:
Container(color: context.colors.background)
```

### 3. Протестируйте на демо-странице

Создайте кнопку для перехода на демо-страницу:

```dart
import 'package:keep_my_notes/app/shared/widgets/theme_demo_page.dart';

ElevatedButton(
  onPressed: () => Navigator.push(
    context,
    MaterialPageRoute(builder: (_) => ThemeDemoPage()),
  ),
  child: Text('Демо тем'),
)
```

## 📝 Примеры кода

### Пример 1: Карточка с цветами темы

```dart
Container(
  padding: EdgeInsets.all(16),
  decoration: BoxDecoration(
    color: context.colors.card,
    border: Border.all(color: context.colors.border),
    borderRadius: BorderRadius.circular(12),
  ),
  child: Text(
    'Привет!',
    style: TextStyle(color: context.colors.foreground),
  ),
)
```

### Пример 2: Переключение темы программно

```dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_my_notes/app/shared/theme/cubit/theme_cubit.dart';

// В любом месте приложения:
ElevatedButton(
  onPressed: () {
    context.read<ThemeCubit>().toggleTheme();
  },
  child: Text('Переключить тему'),
)
```

### Пример 3: Проверка текущей темы

```dart
if (context.isDarkMode) {
  // Показать что-то для тёмной темы
  Icon(Icons.dark_mode, color: context.colors.foreground)
} else {
  // Показать что-то для светлой темы
  Icon(Icons.light_mode, color: context.colors.foreground)
}
```

## 🎯 Следующие шаги

1. **Запустите приложение**: `flutter run`
2. **Добавьте ThemeSwitcherIconButton** в любую страницу
3. **Протестируйте переключение темы**
4. **Замените статические цвета на `context.colors.xxx`**

## 🐛 Если что-то не работает

### Ошибка: "ThemeCubit not found"
Убедитесь, что запустили `flutter pub run build_runner build --delete-conflicting-outputs`

### Ошибка: "context.colors doesn't exist"
Добавьте импорт:
```dart
import 'package:keep_my_notes/app/shared/extensions/build_context_extension.dart';
```

### Тема не меняется
1. Перезапустите приложение
2. Убедитесь, что `ThemeCubit` зарегистрирован в `get_it` (уже сделано)
3. Проверьте, что `AdaptiveApp` обёрнут в `BlocProvider<ThemeCubit>` (уже сделано)

## 📚 Дополнительные ресурсы

- **Подробная документация**: `lib/app/shared/theme/THEME_GUIDE.md`
- **Полная инструкция**: `THEME_SETUP.md`

---

🎉 **Готово! Можете начинать использовать систему тем!**


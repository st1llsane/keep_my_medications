# Паттерны для создания моковых данных

## Проблема
Фабричный метод `mock()` внутри Freezed модели `Medication` нарушает принцип единственной ответственности и усложняет поддержку кода.

## Решения

### 1. 🏭 Factory Pattern (`medication_mock_factory.dart`)
**Простая фабрика для базовых случаев**

```dart
// Использование
final medication = MedicationMockFactory.defaultMedication();
final evening = MedicationMockFactory.evening();
final custom = MedicationMockFactory.withName('Мой препарат');
```

**Когда использовать:**
- Простые случаи
- Быстрое создание базовых объектов
- Несколько предустановленных вариантов

### 2. 🔧 Builder Pattern (`medication_builder.dart`)
**Гибкое создание с Fluent API**

```dart
// Использование
final medication = MedicationBuilder.create()
    .withName('Аспирин')
    .withDose(500.0)
    .asIbuprofen()
    .withId(1)
    .build();
```

**Когда использовать:**
- Сложные объекты с множественной настройкой
- Нужна максимальная гибкость
- Читаемость кода важна

### 3. 👩‍👧‍👦 Object Mother Pattern (`medication_mothers.dart`)
**Готовые наборы для специфичных сценариев**

```dart
// Использование
final simple = MedicationMothers.simple();
final complete = MedicationMothers.complete();
final mixedList = MedicationMothers.mixedList();
```

**Когда использовать:**
- Тестирование различных состояний
- Нужны "реалистичные" данные
- Готовые сценарии для edge cases

### 4. 🏗️ Abstract Factory Pattern (`mock_factory.dart` + `medication_mock_factory_v2.dart`)
**Масштабируемое решение для больших проектов**

```dart
// Использование
final factory = MedicationMockFactory.instance;
final medication = factory.create();
final list = factory.createList(count: 5);
```

**Когда использовать:**
- Много разных типов моделей
- Нужна единообразность
- Планируется расширение

## Рекомендации по выбору

| Сценарий | Рекомендуемый паттерн | Причина |
|----------|----------------------|---------|
| Юнит-тесты | Object Mother | Готовые сценарии |
| UI разработка | Builder | Гибкость настройки |
| Быстрые тесты | Factory | Простота |
| Большие проекты | Abstract Factory | Масштабируемость |

## Миграция

1. **Удалите** `factory Medication.mock()` из модели
2. **Выберите** подходящий паттерн для вашего случая
3. **Замените** вызовы `Medication.mock()` на новые фабрики
4. **Добавьте** импорты соответствующих файлов

## Структура файлов

```
lib/features/medications/models/
├── medication.dart                    # Основная модель (без mock)
├── medication_mock_factory.dart       # Simple Factory
├── medication_builder.dart            # Builder Pattern  
├── medication_mothers.dart            # Object Mother
├── medication_mock_factory_v2.dart    # Abstract Factory impl
└── examples/
    └── mock_usage_examples.dart       # Примеры использования
``` 
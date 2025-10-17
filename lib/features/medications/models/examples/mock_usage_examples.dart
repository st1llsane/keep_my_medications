import 'package:keep_my_notes/app/shared/enums/medication_time_period.dart';
import '../medication.dart';
import '../medication_builder.dart';
import '../medication_mothers.dart';
import '../medication_mock_factory.dart';

/// Примеры использования различных паттернов для создания моковых данных
class MockUsageExamples {
  /// Примеры использования Simple Factory Pattern
  static void factoryPatternExamples() {
    // Базовое использование
    final medication = MedicationMockFactory.defaultMedication();

    // С кастомизацией
    final customMed = MedicationMockFactory.withName('Мой препарат');
    final eveningMed = MedicationMockFactory.evening();

    // Список препаратов
    final medications = MedicationMockFactory.list();

    print('Factory Pattern: ${medication.name}');
  }

  /// Примеры использования Test Data Builder Pattern
  static void builderPatternExamples() {
    // Базовое использование
    final medication = MedicationBuilder.create()
        .withName('Аспирин')
        .withDose(500.0)
        .withPerDayCount(2)
        .build();

    // Использование пресетов
    final ibuprofen = MedicationBuilder.create()
        .asIbuprofen()
        .withId(1)
        .build();

    // Сложная цепочка
    final complexMed = MedicationBuilder.create()
        .asVitamins()
        .withName('Витамин D3 Forte')
        .withDose(2000.0)
        .withTimestamps('2024-01-01', '2024-01-02')
        .build();

    print('Builder Pattern: ${medication.name}, доза: ${medication.dose}');
  }

  /// Примеры использования Object Mother Pattern
  static void objectMotherExamples() {
    // Готовые объекты для разных сценариев
    final simpleMed = MedicationMothers.simple();
    final completeMed = MedicationMothers.complete();
    final morningMed = MedicationMothers.morning();

    // Готовые списки
    final basicList = MedicationMothers.basicList();
    final mixedList = MedicationMothers.mixedList();
    final largeList = MedicationMothers.largeList();

    // Для тестирования edge cases
    final takenToday = MedicationMothers.takenToday();
    final multipleDaily = MedicationMothers.multipleDaily();

    print(
      'Object Mother: ${simpleMed.name}, принято сегодня: ${takenToday.takenToday}',
    );
  }

  /// Демонстрация различий между паттернами
  static void patternComparison() {
    print('\n=== Сравнение паттернов ===');

    // 1. Factory Pattern - простота использования
    print('\n1. Factory Pattern (простота):');
    final factoryMed = MedicationMockFactory.defaultMedication();
    print('   ${factoryMed.name} - ${factoryMed.timePeriod}');

    // 2. Builder Pattern - гибкость
    print('\n2. Builder Pattern (гибкость):');
    final builderMed = MedicationBuilder.create()
        .withName('Кастомный препарат')
        .withDose(250.0)
        .asMorningMedication()
        .build();
    print('   ${builderMed.name} - ${builderMed.dose}mg');

    // 3. Object Mother - готовые сценарии
    print('\n3. Object Mother (готовые сценарии):');
    final motherMed = MedicationMothers.complete();
    print('   ${motherMed.name} - ${motherMed.createdAt}');
  }

  /// Примеры для разных контекстов использования
  static void contextExamples() {
    print('\n=== Контексты использования ===');

    // Для юнит-тестов - простые объекты
    print('\nДля юнит-тестов:');
    final testMed = MedicationMothers.simple();
    print('  ${testMed.name}');

    // Для интеграционных тестов - полные данные
    print('\nДля интеграционных тестов:');
    final integrationMed = MedicationMothers.complete();
    print('  ${integrationMed.name} (${integrationMed.createdAt})');

    // Для UI разработки - красивые данные
    print('\nДля UI разработки:');
    final uiMed = MedicationBuilder.create()
        .asVitamins()
        .withName('Витамин C 1000mg')
        .withShortDescription('Поддержка иммунитета')
        .build();
    print('  ${uiMed.name} - ${uiMed.shortDescription}');

    // Для демо - разнообразные данные
    print('\nДля демо:');
    final demoList = MedicationMothers.mixedList();
    for (final med in demoList) {
      print('  ${med.name} (${med.perDayCount}x в день)');
    }
  }

  /// Когда использовать какой паттерн
  static void whenToUseWhat() {
    print('\n=== Когда использовать что ===');
    print('');
    print('🏭 Factory Pattern:');
    print('   - Простые случаи');
    print('   - Быстрое создание базовых объектов');
    print('   - Когда нужно несколько вариантов');
    print('');
    print('🔧 Builder Pattern:');
    print('   - Сложные объекты с множественной настройкой');
    print('   - Когда нужна гибкость в создании');
    print('   - Fluent API для читаемости');
    print('');
    print('👩‍👧‍👦 Object Mother:');
    print('   - Готовые наборы для специфичных сценариев');
    print('   - Тестирование различных состояний');
    print('   - Когда нужны "реалистичные" данные');
  }
}

// Пример запуска всех демонстраций
void main() {
  MockUsageExamples.factoryPatternExamples();
  MockUsageExamples.builderPatternExamples();
  MockUsageExamples.objectMotherExamples();
  MockUsageExamples.patternComparison();
  MockUsageExamples.contextExamples();
  MockUsageExamples.whenToUseWhat();
}

/// Абстрактная фабрика для создания моковых данных
abstract class MockFactory<T> {
  T create();
  List<T> createList({int count = 3});
}

/// Базовый интерфейс для всех моковых фабрик
abstract class TestDataFactory {
  const TestDataFactory();
}

/// Миксин для добавления случайности в моковые данные
mixin RandomMockData {
  static final _random = DateTime.now().millisecondsSinceEpoch;

  int get randomId => _random % 10000;
  String get randomName => 'TestItem_${_random % 1000}';
  DateTime get randomDate =>
      DateTime.now().subtract(Duration(days: _random % 365));
}

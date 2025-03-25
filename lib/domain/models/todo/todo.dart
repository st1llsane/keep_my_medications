import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

abstract interface class INote {
  String get title;
  String get description;
}

@freezed
class Todo with _$Todo implements INote {
  const factory Todo({
    required String title,
    @Default('') String description,
  }) = _Todo;

  factory Todo.fromJson(Map<String, Object?> json) => _$TodoFromJson(json);
}

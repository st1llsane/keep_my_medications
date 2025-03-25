part of 'todo_cubit.dart';

@immutable
sealed class TodoState {}

final class TodoInitialState extends TodoState {
  TodoInitialState({required this.todos});

  final List<Todo> todos;
}

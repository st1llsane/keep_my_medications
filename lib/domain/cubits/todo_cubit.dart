import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:keep_my_notes/domain/models/todo/todo.dart';
import 'package:keep_my_notes/domain/repos/todo/todo_repository.dart';

part 'todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  TodoCubit({
    required this.todoRepo,
  }) : super(TodoInitialState(todos: const []));

  final TodoRepository todoRepo;

  List<Todo> get _todos => todoRepo.todos;
}

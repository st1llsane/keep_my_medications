import 'package:keep_my_notes/domain/models/todo/todo.dart';
import 'package:keep_my_notes/domain/repos/note_repository.dart';

class TodoRepository implements NoteRepository {
  final List<Todo> _todos = [];
  List<Todo> get todos => _todos;

  @override
  void create() {
    // TODO: implement create
  }

  @override
  void deleteAt(int index) {
    // TODO: implement deleteAt
  }

  @override
  void deleteAll() {
    // TODO: implement deleteAll
  }
}

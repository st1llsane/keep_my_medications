import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:keep_my_notes/features/notes/domain/models/note.dart';
import 'package:keep_my_notes/shared/globals.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'notes_datasource.g.dart';

@riverpod
Future<List<Note>> getNotes(Ref ref) async {
  final PostgrestList response = await supabase.from('notes').select();
  print('response: $response');
  return response.map((note) => Note.fromJson(note)).toList();
}

class NotesDataSource {
  NotesDataSource(this.supabase);

  final SupabaseClient supabase;

  // Получить все заметки
  Future<List<Note>> getNotes() async {
    final response = await supabase.from('notes').select();
    return (response as List).map((json) => Note.fromJson(json)).toList();
  }

  // Получить заметку по ID
  Future<Note?> getNoteById(String id) async {
    final response =
        await supabase
            .from('notes')
            .select()
            .eq('id', id)
            .single(); // Получаем одну запись
    return Note.fromJson(response);
  }

  // Создать новую заметку
  Future<void> createNote({required String title, String? content}) async {
    await supabase.from('notes').insert({'title': title, 'content': content});
  }

  // Обновить заметку
  Future<void> updateNote({required String id, String? title, String? content}) async {
    await supabase
        .from('notes')
        .update({'title': title, 'content': content})
        .eq('id', id);
  }

  // Удалить заметку
  Future<void> deleteNote(String id) async {
    await supabase.from('notes').delete().eq('id', id);
  }
}

final notesDataSourceProvider = Provider<NotesDataSource>((ref) {
  return NotesDataSource(supabase);
});

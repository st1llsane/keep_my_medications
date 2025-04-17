import 'package:keep_my_notes/features/notes/models/note.dart';
import 'package:keep_my_notes/shared/global.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notes.g.dart';

@riverpod
class Notes extends _$Notes {
  @override
  Future<List<Note>> build() async {
    final List<Note> notes = await supabase
        .from('notes')
        .select()
        .withConverter((data) => data.map(Note.fromJson).toList());
    return notes;
  }

  Future<void> createNote({required String title, String? content}) async {
    ref.invalidateSelf();
    await supabase.from('notes').insert({'title': title, 'content': content});
    ref.invalidateSelf();
  }
}

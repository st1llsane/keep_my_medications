import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:keep_my_notes/features/notes/domain/models/note.dart';
import 'package:keep_my_notes/shared/globals.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notes_providers.g.dart';

@riverpod
Future<List<Note>> notes(Ref ref) async {
  final List<Note> notes = await supabase
      .from('notes')
      .select()
      .withConverter((data) => data.map(Note.fromJson).toList());
  return notes;
}

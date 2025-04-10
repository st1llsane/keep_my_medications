import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:keep_my_notes/features/notes/domain/models/note.dart';
import 'package:keep_my_notes/features/notes/providers/notes_providers.dart';

class NotesList extends ConsumerWidget {
  const NotesList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Note>> notes = ref.watch(notesProvider);

    return switch (notes) {
      AsyncData(:final value) => ListView.builder(
        itemCount: value.length,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => Text('Activity: ${value[index].title}'),
      ),
      AsyncError() => const Text('Oops, something unexpected happened'),
      _ => const SizedBox.square(
        dimension: 40,
        child: Center(child: CupertinoActivityIndicator(radius: 12)),
      ),
    };

    //   final notesDataSource = ref.watch(notesDataSourceProvider);
    //   final notesAsync = ref.watch(getNotesProvider); // Если используем FutureProvider

    //   return Scaffold(
    //     floatingActionButton: FloatingActionButton(
    //       onPressed: () async {
    //         await notesDataSource.createNote(
    //           title: "Новая заметка",
    //           content: "Текст заметки",
    //         );
    //         ref.invalidate(getNotesProvider);
    //       },
    //       child: const Icon(Icons.add),
    //     ),
    //     body: notesAsync.when(
    //       loading: () => const Center(child: CircularProgressIndicator()),
    //       error: (error, stack) => Center(child: Text('Error: $error')),
    //       data:
    //           (notes) => ListView.builder(
    //             itemCount: notes.length,
    //             itemBuilder: (context, index) {
    //               final note = notes[index];
    //               return ListTile(
    //                 title: Text(note.title),
    //                 subtitle: Text(note.content ?? ''),
    //                 trailing: IconButton(
    //                   icon: const Icon(Icons.delete),
    //                   onPressed: () async {
    //                     await notesDataSource.deleteNote(note.id);
    //                     ref.invalidate(getNotesProvider); // Обновить список
    //                   },
    //                 ),
    //               );
    //             },
    //           ),
    //     ),
    //   );
  }
}

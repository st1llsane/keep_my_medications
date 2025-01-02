import 'package:flutter/material.dart';
import 'package:keep_my_notes/widgets/note/note_tile.dart';

class NotesList extends StatefulWidget {
  const NotesList({super.key});

  @override
  State<NotesList> createState() => _NotesListState();
}

class _NotesListState extends State<NotesList> {
  @override
  Widget build(BuildContext context) {
    final notes = List<String>.generate(20, (i) => 'Item ${i + 1}');

    void removeNoteAt(int index) {
      notes.removeAt(index);
    }

    return ListView.builder(
      itemCount: notes.length,
      itemBuilder: ((_, index) {
        final note = notes[index];

        return Dismissible(
          key: UniqueKey(),
          onDismissed: (direction) {
            print('DIRECTION: $direction');

            setState(() {
              removeNoteAt(index);
            });

            // Then show a snackbar.
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('$note dismissed')));
          },
          direction: DismissDirection.endToStart,
          background: Container(color: Colors.red),
          child: ListTile(
            title: Text(note),
            subtitle: Text('Description'),
            onTap: () {
              print('NOTE');
            },
          ),
        );

        // return NoteTile(
        //   index: index,
        //   title: note,
        //   onDismissed: removeNoteAt,
        // );
      }),
    );
  }
}

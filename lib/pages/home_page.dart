import 'package:flutter/material.dart';
import 'package:keep_my_notes/widgets/note/notes_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NotesList(),
    );
  }
}

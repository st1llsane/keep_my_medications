import 'package:flutter/material.dart';
import 'package:keep_my_notes/app/shared/extensions/build_context_extension.dart';
import 'package:keep_my_notes/features/medications/presentation/pages/medications_page.dart';
import 'package:keep_my_notes/features/notes/widgets/notes_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () => context.router.pushMedications(),
                child: Text('Медикаменты'),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () => context.router.pushMood(),
                child: Text('Настроение'),
              ),
            ),
          ],
        ),
      ),
    );

    // return const MedicationsPage();
    return const NotesListView();

    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        // children: [const MedicinesPage(), Expanded(child: NotesList())],
        children: [const MedicationsPage(), NotesListView()],
      ),
    );
  }
}

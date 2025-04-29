import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:keep_my_notes/features/medications/presentation/pages/medications_page.dart';
import 'package:keep_my_notes/features/notes/widgets/notes_list.dart';
import 'package:keep_my_notes/shared/extensions/build_context_extension.dart';

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
                onPressed: () => context.routeNavigator.pushMedicationsPage(),
                child: Text('Препараты'),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () => context.pushNamed('test1'),
                child: Text('TEST 1'),
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

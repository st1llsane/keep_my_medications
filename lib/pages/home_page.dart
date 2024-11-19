import 'package:flutter/material.dart';
import 'package:keep_my_notes/supabase.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _future = db.from('notes').select();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _future,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          final todos = snapshot.data!;

          return ListView.builder(
            itemCount: todos.length,
            itemBuilder: ((context, index) {
              final note = todos[index];

              return ListTile(
                title: Text(note['note']),
              );
            }),
          );
        },
      ),
    );
  }
}

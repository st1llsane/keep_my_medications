import 'package:flutter/material.dart';
// import 'package:keep_my_notes/bootstrap/config/supabase.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // final _future = db.from('notes').select();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: ((context, index) {
          // final note = todos[index];

          return ListTile(
            title: Text('Title'),
          );
        }),
      ),
    );
  }
}

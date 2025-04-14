import 'package:flutter/material.dart';

class NoteTile extends StatefulWidget {
  const NoteTile({
    super.key,
    required this.index,
    required this.title,
    this.description,
    required this.onDismissed,
  });

  final int index;
  final String title;
  final String? description;
  final void Function(int index) onDismissed;

  @override
  State<NoteTile> createState() => _NoteTileState();
}

class _NoteTileState extends State<NoteTile> {
  @override
  Widget build(BuildContext context) {
    final note = widget.title;

    return Dismissible(
      key: Key(widget.index.toString()),
      onDismissed: (direction) {
        setState(() {
          widget.onDismissed(widget.index);
        });

        // Then show a snackbar.
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('$note dismissed')));
      },
      child: ListTile(
        title: Text(widget.title),
        subtitle: Text('Description'),
        onTap: () {
          print('NOTE');
        },
      ),
    );

    // return InkWell(
    //   onTap: () {
    //     print('NOTE');
    //   },
    //   child: Padding(
    //     padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Text('Title: '),
    //         Text('Description: '),
    //       ],
    //     ),
    //   ),
    // );
  }
}

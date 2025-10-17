import 'package:flutter/material.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // floatingActionButton: NotesFloatingActionButton(),
      // floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      // body: SafeArea(bottom: false, child: NotesList()),
      body: SafeArea(bottom: false, child: Placeholder()),
    );
  }
}

// class NotesFloatingActionButton extends ConsumerWidget {
//   const NotesFloatingActionButton({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final AsyncValue<List<Note>> notes = ref.watch(notesProvider);
//     final bool isLoading = notes.isLoading || notes.isRefreshing;

//     Future<void> createNote() async {
//       if (isLoading) return;
//       // await ref
//       //     .watch(notesProvider.notifier)
//       //     .createNote(title: 'Очень круто', content: 'Лютая кака');
//     }

//     return ElevatedButton(
//       onPressed: createNote,
//       style: ElevatedButton.styleFrom(
//         padding: EdgeInsets.zero,
//         fixedSize: const Size(52, 52),
//         minimumSize: const Size(52, 52),
//         tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//       ),
//       child: isLoading
//           ? const CupertinoActivityIndicator(radius: 10)
//           : const Icon(Icons.add),
//     );
//   }
// }

// class NotesList extends ConsumerWidget {
//   const NotesList({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final AsyncValue<List<Note>> notes = ref.watch(notesProvider);
//     final double bottomPadding = MediaQuery.of(context).padding.bottom + 30;

//     return switch (notes) {
//       AsyncData(:final value) => ListView.builder(
//         itemCount: value.length,
//         shrinkWrap: true,
//         padding: EdgeInsets.only(top: 10, bottom: bottomPadding),
//         itemBuilder: (context, index) =>
//             Text('Activity: ${value[index].title}'),
//       ),
//       AsyncError() => const Text('Oops, something unexpected happened'),
//       _ => const SizedBox.square(
//         dimension: 40,
//         child: Center(child: CupertinoActivityIndicator(radius: 12)),
//       ),
//     };
//   }
// }

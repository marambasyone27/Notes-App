import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_bottomSheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              builder: (context) => const AddNoteBottomSheet(),
            );
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26),
          ),
          backgroundColor: Colors.greenAccent,
          child: const Icon(Icons.add, color: Colors.black),
        ),
        body: const NotesViewBody(),
      );
  }
}

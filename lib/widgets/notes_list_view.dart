import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes%20cubit/notes_cubit.dart';
import 'package:notes_app/widgets/custom_noteItem.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesStates>(
      builder: (context, state) {
        if (state is NotesSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.notes.length,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: NotesItem(note: state.notes[i]),
              );
            },
          );
        } else {
          return const Center(child: Text("No notes yet"));
        }
      },
    );
  }
}

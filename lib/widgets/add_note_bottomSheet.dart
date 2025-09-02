import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_noteCubit/notes_cubit.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
          child: BlocConsumer<AddNotesCubit, AddNotesStates>(
            listener: (context, state) {
              if (state is NotesSuccessState) {
                Navigator.pop(context);
              }
              if (state is NotesFailureState) {
                print('Something went Wrong : ${state.errorMessage}');
              }
            },
            builder: (context, state) {
              return AbsorbPointer(
                absorbing: state is NotesLoadingState ? true : false,
                child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: SingleChildScrollView(child: const AddNoteForm()),
                ),
              );
            },
          ),
     
    );
  }
}

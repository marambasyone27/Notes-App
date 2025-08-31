import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_noteCubit/notes_cubit.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: BlocConsumer<AddNotesCubit,AddNotesStates >(
            listener: (context, state) {
            if (state is NotesSuccessState){
              Navigator.pop(context);
            }
            if(state is NotesFailureState){
              print('Something went Wrong : ${state.errorMessage}');
            }

            },
            builder: (context, state) {
              return ModalProgressHUD(
                inAsyncCall: state is NotesLoadingState ? true : false,
              child:const AddNoteForm());
            },
          ),
        ),
      ),
    );
  }
}

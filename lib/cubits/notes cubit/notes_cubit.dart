import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
part 'notes_states.dart';

class NotesCubit extends Cubit<NotesStates>{
  NotesCubit(): super(NotesInitial());

  fetchAllNotes() async{

    try {
  var notesBox = Hive.box<NoteModel>(kNotesBox);
   List<NoteModel> notes=notesBox.values.toList();
   emit(NotesSuccess(
   notes
   ));
}  catch (e) {
  emit(NotesFailure( 'Something went Wrong : ${e.toString()}'));
}
  }
}
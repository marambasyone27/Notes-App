import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

 part 'add_notes_states.dart';
class AddNotesCubit extends Cubit<AddNotesStates> {
  AddNotesCubit() : super(NotesInitialState());
  Color color = Colors.pinkAccent;
  addNote(NoteModel note) async{
    note.color = color.value; 
    emit(NotesLoadingState());
    try {
  var notesBox = Hive.box<NoteModel>(kNotesBox);
   await notesBox.add(note);
   emit(NotesSuccessState());
}  catch (e) {
  emit(NotesFailureState( 'Something went Wrong : ${e.toString()}'));
}

  }
}
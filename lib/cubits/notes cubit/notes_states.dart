part of 'notes_cubit.dart';

import 'package:notes_app/models/note_model.dart';

abstract class AddNotesStates{}

class NotesInitialState extends AddNotesStates{}
class NotesLoadingState extends AddNotesStates{}
class NotesSuccessState extends AddNotesStates{
  final List <NoteModel> notes;
  NotesSuccessState(this.notes);
}
class NotesFailureState extends AddNotesStates{
  final String errorMessage;
  NotesFailureState( this.errorMessage);
}
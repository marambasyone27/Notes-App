part of 'notes_cubit.dart';

abstract class NotesStates {}

class NotesInitial extends NotesStates {}

class NotesSuccess extends NotesStates {
  final List<NoteModel> notes;
  NotesSuccess(this.notes);
}




part of 'add_notes_cubit.dart';

abstract class AddNotesStates{}

class NotesInitialState extends AddNotesStates{}
class NotesLoadingState extends AddNotesStates{}
class NotesSuccessState extends AddNotesStates{}
class NotesFailureState extends AddNotesStates{
  final String errorMessage;
  NotesFailureState( this.errorMessage);
}
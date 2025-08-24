part of 'notes_cubit.dart';

abstract class NotesState{}

class NotesInitialState extends NotesState{}
class NotesLoadingState extends NotesState{}
class NotesSuccessState extends NotesState{}
class NotesFailureState extends NotesState{
  final String errorMessage;
  NotesFailureState( this.errorMessage);
}
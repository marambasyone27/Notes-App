import 'package:bloc/bloc.dart';
import 'package:notes_app/models/note_model.dart';

 part 'notes_states.dart';
class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitialState());
  addNote(NoteModel note){
    
  }
}
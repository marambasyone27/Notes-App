import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

 part 'notes_states.dart';
class AddNotesCubit extends Cubit<NotesState> {
  AddNotesCubit() : super(NotesInitialState());
  addNote(NoteModel note) async{
    emit(NotesLoadingState());
    try {
  var notesBox = Hive.box<NoteModel>(kNotesBox);
   emit(NotesSuccessState());
     await notesBox.add(note);
}  catch (e) {
  emit(NotesFailureState( 'Something went Wrong : ${e.toString()}'));
}

  }
}
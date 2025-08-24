import 'package:bloc/bloc.dart';

 part 'notes_states.dart';
class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitialState());

}
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/notes%20cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_notes_view.dart';

class NotesItem extends StatelessWidget{
  const NotesItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => EditNotesView())),
      child: Container(
        padding: const EdgeInsets.only(top: 24 , bottom: 24 , left:16),
        decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadiusDirectional.circular(16),
           
          ),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
             children: [
               ListTile(
                title: Text(note.title, style: TextStyle(color: Colors.black , fontSize: 26)),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16 , bottom: 16),
                  child: Text(note.subtitle, style: TextStyle(color: Colors.black.withOpacity(0.5) , fontSize: 18)),
                ),
                trailing: IconButton(onPressed: (){
                  note.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();// هنا بيعمل ريفرش ويعرض قائمه الملاحظات بعد حذف الملاحظه دي 
                }, icon: Icon(FontAwesomeIcons.trash, color: Colors.black, size: 25,)),
      
               ),
               Padding(
                 padding: const EdgeInsets.only(right: 24),
                 child: Text(note.date, style: TextStyle(color: Colors.black.withOpacity(0.4), fontSize: 16)),
               ),
              
             ],
             
           ),
           
      ),
    );
  }

}



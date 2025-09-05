import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes%20cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_appBar.dart';
import 'package:notes_app/widgets/custom_searchIcon.dart';
import 'package:notes_app/widgets/custom_textField.dart';
import 'package:notes_app/widgets/edit_noteColorList.dart';

class EditNotesViewBody extends StatefulWidget {
  const EditNotesViewBody({
    super.key,required  this.note,
  });
   final NoteModel note;
    

  @override
  State<EditNotesViewBody> createState() => _EditNotesViewBodyState();
}

class _EditNotesViewBodyState extends State<EditNotesViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 45),
     CustomAppBar(
  title: 'Edit Note',
  customIcon: CustomIcon(
    icon: Icons.check,
    onPressed: () {
      widget.note.title = title ?? widget.note.title;
      widget.note.subtitle = content ?? widget.note.subtitle;
      widget.note.save();
      BlocProvider.of<NotesCubit>(context).fetchAllNotes();
      Navigator.pop(context);
    },
  ),
  icon: Icons.check,
),

         SizedBox(height: 45),
        Padding(
    padding: const EdgeInsets.all(16),
    child: SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [
            const SizedBox(height: 32),
            CustomTextField(hintText: widget.note.title,
            onChanged:(value) {
              title=value;
            },
            ),
            SizedBox(height: 20),
            CustomTextField(hintText: widget.note.subtitle, maxLines: 5,
            onChanged:(value) {
              content=value;
            },
            ),
            SizedBox(height: 16),
             EditNoteColorList(
              note: widget.note,
            ),
          ],
        ),
      )
    ), 
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:notes_app/widgets/edit_noteView_body.dart';

class EditNotesView  extends StatelessWidget{
  const EditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: EditNotesViewBody(),
    );
  }

}


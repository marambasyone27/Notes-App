import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_noteItem.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context,i){
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: NotesItem(),
        );
        

      }),
    );
  }
}


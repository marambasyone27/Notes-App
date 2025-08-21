import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_noteItem.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final data =const [];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ListView.builder(
        padding: EdgeInsets.zero,
       // itemCount: 10,
        itemBuilder: (context,i){
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: NotesItem(),
        );
        

      }),
    );
  }
}


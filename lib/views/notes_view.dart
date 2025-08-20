import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26),
        ),
        backgroundColor: Colors.greenAccent,
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
              color: Colors.black,
              //size: 24,
            )),
      ),
      body: NotesViewBody(),
    );
  }
}

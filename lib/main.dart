import 'package:flutter/material.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
      ),
      body: const Center(
        child: Text('No notes yet!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add new note
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}


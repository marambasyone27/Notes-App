import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_textField.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
               const SizedBox(height: 32),
              CustomTextField(hintText: 'Title'),
               SizedBox(height: 16),
               CustomTextField(hintText: 'Content', maxLines: 5),
              const SizedBox(height: 60),
               CustomButton(text: 'Add'),
            ],
          ),
        ),
      ),
    );
  }
}


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
        child: Column(
          //mainAxisSize: MainAxisSize.max,
          children: [
            CustomTextField(hintText: 'Title', maxLines: 1,),
             SizedBox(height: 12),
             CustomTextField(hintText: 'Content', maxLines: 5),
            const SizedBox(height: 20),
             CustomButton(text: 'Add'),
          ],
        ),
      ),
    );
  }
}


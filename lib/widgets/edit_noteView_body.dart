import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appBar.dart';
import 'package:notes_app/widgets/custom_searchIcon.dart';
import 'package:notes_app/widgets/custom_textField.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 45),
        CustomAppBar(
    title: 'Edit Note',
    customIcon: CustomIcon(icon: Icons.check),
        ),
        Padding(
    padding: const EdgeInsets.all(16),
    child: SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [
            const SizedBox(height: 32),
            CustomTextField(hintText: 'Title'),
            SizedBox(height: 20),
            CustomTextField(hintText: 'Content', maxLines: 5),
            
          ],
        ),
      )
    ),
        
          
         
        ],
      ),
    );
  }
}
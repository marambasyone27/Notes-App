import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appBar.dart';
import 'package:notes_app/widgets/custom_searchIcon.dart';
import 'package:notes_app/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 45),
          CustomAppBar(
            title: 'Notes',
            customIcon: CustomIcon(icon: Icons.search_outlined), icon: Icons.search_outlined,
          ),
          const Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}



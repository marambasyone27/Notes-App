import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/colors_listView.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.note});
   final NoteModel note;
  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = kColors.indexWhere((color) => color.value == widget.note.color);

    if (currentIndex == -1) {
      currentIndex = 0; 
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = i;
                  widget.note.color = kColors[i].value; 
                });
              },
              child: ColorItem(
                color: kColors[i],
                isActive: currentIndex == i,
              ),
            ),
          );
        },
      ),
    );
  }
}

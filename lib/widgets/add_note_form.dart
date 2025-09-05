import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_noteCubit/add_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/colors_listView.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_textField.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextField(
            hintText: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 16),
          CustomTextField(
            hintText: 'Content',
            maxLines: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          const SizedBox(height: 32),
          ColorsListView(),
          const SizedBox(height: 32),
          
          BlocBuilder<AddNotesCubit, AddNotesStates>(
            builder: (context, state) {
              return CustomButton(
                'Add',
                isLoading: state is NotesLoadingState ? true : false,
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var currentDate= DateTime.now();
                    var formatedcurrentDate = DateFormat('dd-mm-yyyy').format(currentDate);
                    var noteModel = NoteModel(
                        title: title!,
                        color: Colors.pink.value,
                        subtitle: subTitle!,
                        date: formatedcurrentDate);
                    BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode
                          .always; // افضل اتاكد ان اليوزر مدخل داتا ومظبوطه
                    });
                  }
                },
              );
            },
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}



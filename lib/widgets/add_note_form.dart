import 'package:flutter/material.dart';
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
  final GlobalKey<FormState> formkey =GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  String? title , subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
           const SizedBox(height: 32),
          CustomTextField(hintText: 'Title' , onSaved: (value) {
            title = value;
          },),
           SizedBox(height: 16),
           CustomTextField(hintText: 'Content', maxLines: 5, onSaved: (value) {
             subTitle = value;
           },),
          const SizedBox(height: 32),
           CustomButton(text: 'Add' ,
           onTap: () {
             if (formkey.currentState!.validate()){
              formkey.currentState!.save();
             }
             else{
              setState(() {
                autovalidateMode=AutovalidateMode.always;// افضل اتاكد ان اليوزر مدخل داتا ومظبوطه
              });
             }
           },
           ),
           SizedBox(height: 16),
        ],
      ),
    );
  }
}


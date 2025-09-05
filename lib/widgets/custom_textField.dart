import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, required this.hintText,this.inputType, this.onChanged, this.obscureText = false,  this.maxLines=1, this.onSaved,});
 final String? hintText;
  TextInputType?  inputType;
  bool? obscureText;
   final int? maxLines;
   final void Function(String?)? onSaved ;
    final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if ( value?.isEmpty ?? true) {
          return 'This field is required';
        }
        else {
          return null;
        }
      },
      obscureText: obscureText!,
      keyboardType: inputType,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
         focusedBorder: BuildBorder( kPrimaryColor),
        hintText: hintText,
        hintStyle: TextStyle(
          color: kPrimaryColor,
        ),
        enabledBorder:BuildBorder(),
        border: BuildBorder(),
      ),
      maxLines: maxLines,
    );
  }

  // ignore: non_constant_identifier_names
  OutlineInputBorder BuildBorder([Color? color]) {
    return OutlineInputBorder(
        borderSide: BorderSide(
          color: color ?? Colors.white
        ),
        borderRadius: BorderRadius.circular(8),
        
      );
  }
}
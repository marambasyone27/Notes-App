import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, required this.hintText,this.inputType, this.onChanged, this.obscureText = false,  this.maxLines=1,});
  Function(String)? onChanged;
 final String? hintText;
  TextInputType?  inputType;
  bool? obscureText;
   final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText!,
      onChanged: onChanged,
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
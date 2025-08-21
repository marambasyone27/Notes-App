import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({this.hintText,this.inputType, this.onChanged, this.obscureText = false, required int maxLines});
  Function(String)? onChanged;
  String? hintText;
  TextInputType?  inputType;
  bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText!,
      onChanged: onChanged,
      keyboardType: inputType,
      cursorColor: KPrimaryColor,
      decoration: InputDecoration(
         focusedBorder: BuildBorder( KPrimaryColor),
        hintText: hintText,
        hintStyle: TextStyle(
          color: KPrimaryColor,
        ),
        enabledBorder:BuildBorder(),
        border: BuildBorder(),
      ),
    );
  }

  OutlineInputBorder BuildBorder([Color]) {
    return OutlineInputBorder(
        borderSide: BorderSide(
          color: Color?? Colors.white
        ),
        borderRadius: BorderRadius.circular(8),
        
      );
  }
}
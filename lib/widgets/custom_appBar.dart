import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_searchIcon.dart';

class CustomAppBar extends StatelessWidget{
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Notes' , style: TextStyle(color: Colors.white , fontSize: 30),),
         CustomSearchIcon()
      ],
    );
  }

}


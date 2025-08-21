import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_searchIcon.dart';


class CustomAppBar extends StatelessWidget{
  const CustomAppBar({super.key, required this.title, required this.customIcon});
  final String title;
  final CustomIcon? customIcon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title , style: TextStyle(color: Colors.white , fontSize: 30),),
         CustomIcon(icon: customIcon!.icon)
      ],
    );
  }

}


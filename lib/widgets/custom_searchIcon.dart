import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget{
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.07),
          borderRadius: BorderRadiusDirectional.circular(16),
        ),
        child:  Icon(Icons.search_outlined,color: Colors.white,size: 28, ),
       )
;
  }

}
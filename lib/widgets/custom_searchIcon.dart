import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget{
  const CustomIcon({super.key, this.icon = Icons.search_outlined,});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.07),
          borderRadius: BorderRadiusDirectional.circular(16),
        ),
        child:  Icon( icon, color: Colors.white,size: 28, ),
       )
;
  }

}
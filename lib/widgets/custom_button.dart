import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton(param0, {super.key, this.onTap,  this.text='Add',  this.isLoading=false});
  VoidCallback? onTap;
  String text;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        width: double.infinity,
        height: 55,
        child: Center(
          child: isLoading? CircularProgressIndicator(
             color: Colors.black,

          ) : Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}
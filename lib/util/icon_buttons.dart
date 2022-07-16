// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class IconButtonS extends StatelessWidget {
  final String imagePath;
  final String text;
  final Color colour1;
  final Color colour2;
  final Color textColour;

  const IconButtonS({
    Key? key,
    required this.imagePath,
    required this.text,
    required this.colour1,
    required this.colour2,
    required this.textColour,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                colour1,
                colour2,
                colour1,
              ]),
          boxShadow: [
            BoxShadow(
                color: colour1.withOpacity(0.3),
                spreadRadius: 8,
                blurRadius: 16,
                offset: Offset(0, 5)),
          ]),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath),
            SizedBox(
              width: 15,
            ),
            Text(
              text,
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: textColour),
            ),
          ],
        ),
      ),
    );
  }
}

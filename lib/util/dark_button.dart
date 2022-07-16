// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DarkButton extends StatelessWidget {
  final String text;
  const DarkButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color.fromARGB(255, 53, 53, 66),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LogoTrackizer extends StatelessWidget {
  const LogoTrackizer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //logo
          Image.asset('lib/assets/Icons/Main Logo.png'),
          SizedBox(
            width: 15,
          ),
          //Trackizer text
          Text(
            'TRACKIZER',
            style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          )
        ],
      ),
    );
  }
}
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:trackizer/util/dark_button.dart';
import 'package:trackizer/util/logo_trackizer.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: false,
      right: false,
      child: Container(
        color: Color.fromARGB(255, 28, 28, 35),
        child: Column(children: [
          //logo TRACKIZER
          Hero(tag: 'Logo', child: LogoTrackizer()),

          // background
          Stack(
            clipBehavior: Clip.none,
            children: [
              //Background Images
              Container(
                width: double.infinity,
                child: Image.asset(
                  'lib/assets/backGround/welcomeBG.png',
                  fit: BoxFit.cover,
                ),
              ),
              // Welcome Text
              Positioned(
                top: 480,
                left: 20,
                child: Row(
                  children: [
                    LimitedBox(
                      maxWidth: 350,
                      child: Text(
                        'Congue malesuada in ac justo, a tristique leo massa. Arcu leo leo urna risus.',
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              //I have an account Button
              //Get Started Button
              Positioned(
                top: 615,
                left: 30,
                child: Row(
                  children: [
                    LimitedBox(
                      maxWidth: 324,
                      child: GestureDetector(
                        onTap: (() =>
                            Navigator.pushNamed(context, '/register1')),
                        child: DarkButton(text: 'I have an account'),
                      ),
                    ),
                  ],
                ),
              ),

              Positioned(
                top: 550,
                left: 30,
                child: Row(
                  children: [
                    LimitedBox(
                      maxWidth: 324,
                      child: GestureDetector(
                        onTap: (() =>
                            Navigator.pushNamed(context, '/register1')),
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromARGB(255, 255, 121, 102),
                                    Color.fromARGB(255, 255, 166, 153),
                                    Color.fromARGB(255, 255, 121, 102),
                                  ]),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 255, 121, 102)
                                        .withOpacity(0.3),
                                    spreadRadius: 8,
                                    blurRadius: 16,
                                    offset: Offset(0, 5)),
                              ]),
                          child: Center(
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trackizer/util/dark_button.dart';
import 'package:trackizer/util/icon_buttons.dart';
import 'package:trackizer/util/logo_trackizer.dart';

class Register1 extends StatelessWidget {
  const Register1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color.fromARGB(255, 28, 28, 35),
        child: Column(
          children: [
            //Logo Trackizer
            Hero(tag: 'Logo', child: LogoTrackizer()),

            //3 buttons
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 250),
              child: Column(
                children: [
                  IconButtonS(
                    imagePath: 'lib/assets/Icons/Apple.png',
                    text: "Sign up with Apple",
                    colour1: Color.fromARGB(255, 14, 14, 15),
                    colour2: Color.fromARGB(255, 43, 43, 44),
                    textColour: Colors.white,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  IconButtonS(
                    imagePath: 'lib/assets/Icons/Google.png',
                    text: "Sign up with Google",
                    colour1: Color.fromARGB(255, 246, 250, 255),
                    colour2: Color.fromARGB(255, 255, 255, 255),
                    textColour: Colors.black,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  IconButtonS(
                    imagePath: 'lib/assets/Icons/Facebook.png',
                    text: "Sign up with Facebook",
                    colour1: Color.fromARGB(255, 23, 113, 230),
                    colour2: Color.fromARGB(255, 78, 152, 250),
                    textColour: Colors.white,
                  ),
                ],
              ),
            ),

            LimitedBox(
              maxHeight: 209,
              child: Column(
                children: [
                  // or
                  Spacer(
                    flex: 2,
                  ),
                  Text(
                    'or',
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontSize: 16),
                  ),
                  Spacer(
                    flex: 2,
                  ),

                  // 1 button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: DarkButton(text: 'Sign up ith e-mail'),
                  ),
                  Spacer(),

                  // accept text

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text(
                      "By registering, you agree to our Terms of Use. Learn how we collect, use and share your data.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: 10.5),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

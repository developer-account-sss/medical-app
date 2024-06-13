import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_app/views/signup_view.dart';
import 'dart:developer' as devtools show log;

Container splashScreen(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color.fromRGBO(225, 125, 125, 0.3),
          Color.fromRGBO(21, 199, 238, 0.5),
        ],
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'Hello, Flutter!',
            style: GoogleFonts.kaiseiHarunoUmi(
              fontStyle: FontStyle.normal,
              textStyle: TextStyle(color: Colors.redAccent, fontSize: 40),
            ),
          ),
        ),
        Center(
          child: Image.asset(
            'assets/images/home-screen.png',
            height: 300,
            width: 300,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Center(
            child: Text(
              'Embrace the journey of self-improvement. Your commitment to health is a gift to yourself',
              style: GoogleFonts.inriaSans(
                fontStyle: FontStyle.italic,
                textStyle: TextStyle(color: Colors.black, fontSize: 32),
              ),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () => {devtools.log('Sign in clicked')},
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Sign in',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: Colors.purple,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => SignUp()))
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Sign up',
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: Colors.purple,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

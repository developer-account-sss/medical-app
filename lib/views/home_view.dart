import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/views/cards_view.dart';
import 'package:medical_app/views/signin_view.dart';
import 'package:medical_app/views/signup_view.dart';
import 'package:medical_app/views/verify_email_view.dart';
import '../firebase_options.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(225, 125, 125, 0.3),
              Color.fromRGBO(21, 199, 238, 0.5),
            ],
          ),
        ),
        child: FutureBuilder(
          future: Firebase.initializeApp(
            options: DefaultFirebaseOptions.currentPlatform,
          ),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.done:
                final user = FirebaseAuth.instance.currentUser;
                if (user != null) {
                  if (user.emailVerified) {
                    // devtools.log('Email verified');
                    return const CardsView();
                  } else {
                    return const VerifyEmailView();
                  }
                } else {
                  return const SignIn();
                }
              // return const VerifyEmailView();

              default:
                return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}

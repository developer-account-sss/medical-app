import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical_app/components/splashScreen.dart';
import 'package:medical_app/routes/routes.dart';
import 'package:medical_app/views/cards_view.dart';
import 'package:medical_app/views/signin_view.dart';
import 'package:medical_app/views/home_view.dart';
import 'package:medical_app/views/signup_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    home: const Home(),
    routes: {
      loginRoute: (context) => const SignIn(),
      registerRoute: (context) => const SignUp(),
      homeRoute: (context) => const Home(),
      cardsRoute: (context) => const CardsView(),
    },
  ));
}

class MyApp extends StatelessWidget {
  // ignore: use_super_parameters
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme),
      ),
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Linear Gradient Background'),
        // ),
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
          // child: splashScreen(context),
          child: const Home(),
        ),
      ),
    );
  }
}

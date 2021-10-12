import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:therapeuticdoctor/pages/getting_started.dart';
import 'package:therapeuticdoctor/pages/sign_in.dart';
import 'package:therapeuticdoctor/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/getting-started': (context) => GettingStartedPage()
      },
    );
  }
}
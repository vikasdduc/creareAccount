import 'package:flutter/material.dart';
import 'package:untitled1/home_screen.dart';
import 'package:untitled1/signin_view.dart';
import 'package:untitled1/signup_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:   '/',
      routes: {
        '/':  (context) => const SignUpPage(),
        '/onloginpage': (context) => const SignInPage(),
        '/homescreen' : (context) => const HomePage(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

    );
  }
}


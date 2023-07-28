import 'package:flutter/material.dart';
// import 'package:superapps/pages/home_page.dart';
import 'package:superapps/pages/main_page.dart';
import 'package:superapps/pages/signin_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // this widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SigninPage(),
        '/home': (context) => const MainPage(),
      },
    );
  }
}

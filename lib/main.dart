import 'package:flutter/material.dart';
//import 'Screen_code/Screen.dart';
import 'Screens_code/ScreenHome.dart';
import 'Screens_code/SignIn.dart';
import 'Screens_code/Signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TOKOTO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ScreenHome(),
    );
  }
}

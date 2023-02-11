import 'package:flutter/material.dart';
//import 'Screen_code/Screen.dart';
import 'Screens_code/Acceuil_Screen.dart';
import 'Screens_code/Auth_Screens/SignIn.dart';
import 'Screens_code/Auth_Screens/Signup.dart';

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
      //home: const ScreenHome(),
      initialRoute: "/Acceuil",
      routes: {
        "/signin": (context) => const SignIn(),
        "/signup": (context) => const SignUp(),
        "/Acceuil": (context) => const AccScreen(),
      },
    );
  }
}

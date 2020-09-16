import 'package:flutter/material.dart';
import 'package:flutter_signup_screen/sign_up_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sign Up Screen',
      home: SingUpScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:login_bloc/login_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Log Me',
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}

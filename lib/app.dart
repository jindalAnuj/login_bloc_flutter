import 'package:flutter/material.dart';
import 'package:login_bloc/login_screen.dart';
import 'blocs/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        title: 'Log Me',
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
  }
}

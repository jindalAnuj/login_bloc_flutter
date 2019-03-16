import 'package:flutter/material.dart';
import 'package:login_bloc/blocs/bloc.dart';
import 'blocs/provider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);

    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          emailField(bloc),
          passwordField(bloc),
          Container(
            margin: EdgeInsets.all(20.0),
          ),
          submitButton(bloc),
        ],
      ),
    );
  }

  Widget emailField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          onChanged: (newValue) {
            bloc.changeEmail(newValue);
          },
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              errorText: snapshot.error,
              labelText: 'Email',
              hintText: 'you@emample.com'),
        );
      },
    );
  }

  Widget passwordField(Bloc bloc) {
    return StreamBuilder(
        stream: bloc.password,
        builder: (context, snapshot) {
          return TextField(
            onChanged: bloc.changePassword,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Enter more then 4 digit',
              errorText: snapshot.error,
            ),
          );
        });
  }

  Widget submitButton(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.submitValid,
      builder: (context, snapshot) {
        return RaisedButton(
          child: Text('Login'),
          color: Colors.amber,
          onPressed: snapshot.hasData ? bloc.submit : null,
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutterfirebase/services/auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final Authentication _auth = Authentication();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Sign in to Brew Crew'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: ElevatedButton(
          child: Text('sign in anon'),
          onPressed: () async {
            dynamic result = await _auth.signInAno();
            if(result == null){
              print('error signing in');
            } else {
              print('signed in');
              print(result);
            }
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutterfirebase/screens/home/home.dart';

import 'authenticate/sign_in.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return SignIn();
  }
}

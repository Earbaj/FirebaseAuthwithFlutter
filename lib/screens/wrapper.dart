import 'package:flutter/material.dart';
import 'package:flutterfirebase/screens/authenticate/authentication.dart';
import 'package:flutterfirebase/screens/home/home.dart';
import 'package:provider/provider.dart';

import '../models/user.dart';
import 'authenticate/sign_in.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<Users?>(context);
    print(user);

    if(user == null){
      return Authentication();
    }else{
      return Home();
    }
  }
}

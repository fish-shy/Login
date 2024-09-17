import 'package:flutter/material.dart';
import 'package:lowgin/loading.dart';
import 'package:lowgin/login.dart';
import 'package:lowgin/register.dart';

void main() {
  runApp(MaterialApp(

    initialRoute: '/login',
    routes: {
      '/' :(context) => const Loading(),
      '/login' :(context) => const Login(),
       '/register' :(context) => const Register()
    },
  ));
}

import 'package:flutter/material.dart';
import 'pages/hello.dart';
import 'pages/login.dart';
import 'pages/signup.dart';
import 'pages/confirmation.dart';

void main() {
  runApp( MaterialApp(
    routes: {
      '/': (context) => Hello(),
      '/login': (context) => Login(),
      '/signup': (context) => SignUp(),
      '/confirmation': (context) => Confirmation(),
    },
  ));
}

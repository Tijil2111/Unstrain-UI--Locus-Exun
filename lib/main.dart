import 'package:flutter/material.dart';
import 'package:unstrain/pages/login.dart';
import 'package:unstrain/pages/welcome.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/':(context)=> const WelcomePage(),
      '/login':(context)=>  LoginPage(),
    },
  ));
}

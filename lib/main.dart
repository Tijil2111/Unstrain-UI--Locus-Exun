import 'package:flutter/material.dart';
import 'package:unstrain/pages/main_home.dart';
import 'package:unstrain/pages/login.dart';
import 'package:unstrain/pages/register.dart';
import 'package:unstrain/pages/welcome.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/':(context)=> const WelcomePage(),
      '/login':(context)=>  LoginPage(),
      '/register':(context)=> RegisterPage(),
      '/home':(context)=> MainPage(),
    },
  ));
}

import 'package:flutter/material.dart';
import 'package:foodmoneky/pages/Detail2.dart';
import 'package:foodmoneky/pages/Previews.dart';

import 'pages/Details.dart';
import 'pages/Flash.dart';
import 'pages/Home.dart';
import 'pages/Login.dart';
import 'pages/Register.dart';
import 'pages/Show.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/flash': (context) => const Flash(),
      '/register': (context) => const Register(),
      '/login': (context) => const Login(),
      '/home': (context) => const Home(),
      '/previews': (context) => const Previews(),
      '/show': (context) => const Show(),
       '/details': (context) => const Details(),
        '/': (context) => const Detail2()
    },
    theme: ThemeData(
      fontFamily: "English",
    ),
  ));
}

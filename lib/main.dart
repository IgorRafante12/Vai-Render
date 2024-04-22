// ignore_for_file: prefer_const_constructors

import 'package:app1/base.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/base',
      routes: {
        '/base': (context) => base(),
      },
    );
  }
}

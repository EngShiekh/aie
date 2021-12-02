// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import './home_screen.dart';
import 'layout/home_layout.dart';

void main() {
  runApp(MyApp());
}

// Stateless or Stateful
// class MyApp
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeLayout(),
    );
  }
}

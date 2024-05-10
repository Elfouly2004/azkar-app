import 'package:azkar/home.dart';
import 'package:azkar/morning%20zekr.dart';
import 'package:azkar/sebha.dart';
import 'package:azkar/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      home: morning(),
    );
  }
}

import 'package:calculator/injectable.dart';
import 'package:flutter/material.dart';
import 'package:calculator/view/calculator.dart';

void main() {
  configureDependencies(Env.DEV);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(
        primaryColor: Colors.white24,
        scaffoldBackgroundColor: Colors.white24
      ),
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColorLight: Colors.white,
        buttonColor: Colors.grey,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white.withOpacity(0.9),
      ),
      home: MyCalculator(),
      themeMode: ThemeMode.light,
    );
  }
}
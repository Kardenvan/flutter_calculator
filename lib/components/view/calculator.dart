import 'package:flutter/material.dart';
import 'package:calculator/components/view/result_screen.dart';

class MyCalculator extends StatefulWidget {
  const MyCalculator({Key? key}) : super(key: key);

  @override
  _MyCalculatorState createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  static double? _topMargin;
  static double _sideMargin = 10.0;

  @override
  Widget build(BuildContext context) {
    _topMargin = MediaQuery.of(context).size.height * 0.1;

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          top: _topMargin!,
          right: _sideMargin,
          left: _sideMargin
        ),
        child: Column(
          children: [
            ResultScreen(),
          ],
        ),
      )
    );
  }
}

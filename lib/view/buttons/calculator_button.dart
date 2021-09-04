import 'package:calculator/injectable.dart';
import 'package:calculator/settings.dart';
import 'package:flutter/material.dart';

abstract class CalculatorButton extends StatelessWidget {
  CalculatorButton({
    Key? key
  }) : super(key: key);

  final AppSettings appSettings = getIt<AppSettings>();

  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      onLongPress: onLongPress,
      child: buildButtonBody(context)
    );
  }

  void onTap();

  void onLongPress() {

  }

  Widget buildButtonBody(BuildContext context);
}

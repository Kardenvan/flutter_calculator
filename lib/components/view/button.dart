import 'package:flutter/material.dart';

abstract class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    Key? key
  }) : super(key: key);

  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: buildButtonBody(context)
    );
  }

  void onTap();

  Widget buildButtonBody(BuildContext context);
}

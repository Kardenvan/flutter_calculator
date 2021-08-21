import 'package:calculator/components/view/buttons/back_button.dart';
import 'package:calculator/components/view/buttons/button.dart';
import 'package:calculator/components/view/buttons/change_to_extended_mode_button.dart';
import 'package:calculator/components/view/buttons/change_to_standart_mode_button.dart';
import 'package:calculator/components/view/buttons/number_button.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  GridView.count(
        shrinkWrap: true,
        crossAxisCount: 4,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        children: _getButtonsList(),
      ),
    );
  }

  List<CalculatorButton> _getButtonsList() {
    List<CalculatorButton> _list = [];

    for (int i = 0; i < 10; i++) {
      _list.add(
        NumberButton(value: i)
      );
    }

    _list.add(
      EraseButton()
    );

    _list.add(
      ChangeToExtendedModeButton()
    );

    _list.add(
        ChangeToStandardModeButton()
    );

    return _list;
  }
}

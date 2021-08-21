import 'package:calculator/components/controllers/result_screen/result_screen_cubit.dart';
import 'package:calculator/components/view/buttons/button.dart';
import 'package:calculator/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NumberButton extends CalculatorButton {
  NumberButton({
    required this.value
  }) : super();

  final AppMode _appSettings = AppSettings().currentMode;
  final int value;
  late final ResultScreenCubit _cubit;

  Widget buildButtonBody(BuildContext context) {
    _cubit = BlocProvider.of<ResultScreenCubit>(context);

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).buttonColor,
        borderRadius: BorderRadius.circular(_appSettings.buttonBorderRadius)
      ),
      child: Center(
        child: Text(
          value.toString(),
          style: TextStyle(
            fontSize: _appSettings.buttonFontSize,
            color: _appSettings.numberButtonTextColor
          ),
        ),
      ),
    );
  }

  void onTap() {
    _cubit.addSymbol(value.toString());
  }
}
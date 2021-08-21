import 'package:calculator/components/controllers/result_screen/result_screen_cubit.dart';
import 'package:calculator/components/view/buttons/button.dart';
import 'package:calculator/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EraseButton extends CalculatorButton {

  late final ResultScreenCubit _cubit;

  Widget buildButtonBody(BuildContext context) {
    _cubit = BlocProvider.of<ResultScreenCubit>(context);
    AppMode _appSettings = AppSettings().currentMode;

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).buttonColor,
        borderRadius: BorderRadius.circular(_appSettings.buttonBorderRadius)
      ),
      child: Center(
        child: Icon(
          Icons.arrow_back_rounded,
          color: _appSettings.operationButtonIconColor,
        ),
      ),
    );
  }

  void onTap() {
    _cubit.eraseLastSymbol();
  }

  @override
  void onLongPress() {
    _cubit.clearScreen();
  }
}
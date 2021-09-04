import 'package:calculator/controllers/result_screen/result_screen_cubit.dart';
import 'package:calculator/view/buttons/calculator_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EraseButton extends CalculatorButton {

  late final ResultScreenCubit _cubit;

  Widget buildButtonBody(BuildContext context) {
    _cubit = BlocProvider.of<ResultScreenCubit>(context);

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).buttonColor,
        borderRadius: BorderRadius.circular(
            appSettings.currentMode.buttonBorderRadius
        )
      ),
      child: Center(
        child: Icon(
          Icons.arrow_back_rounded,
          color: appSettings.currentMode.operationButtonIconColor,
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
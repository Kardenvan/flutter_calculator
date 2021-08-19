import 'package:calculator/components/controllers/result_screen/result_screen_cubit.dart';
import 'package:calculator/components/view/button.dart';
import 'package:calculator/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EraseButton extends CalculatorButton {

  late ResultScreenCubit _cubit;

  Widget buildButtonBody(BuildContext context) {
    _cubit = BlocProvider.of<ResultScreenCubit>(context);

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).buttonColor,
        borderRadius: BorderRadius.circular(AppSettings().buttonBorderRadius)
      ),
      child: Center(
        child: Icon(
          Icons.arrow_back_rounded,
          color: AppSettings().operationButtonIconColor,
        ),
      ),
    );
  }

  void onTap() {
    _cubit.eraseLastSymbol();
  }
}
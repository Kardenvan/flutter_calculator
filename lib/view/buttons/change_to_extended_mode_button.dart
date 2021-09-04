import 'package:calculator/controllers/app/app_cubit.dart';
import 'package:calculator/view/buttons/calculator_button.dart';
import 'package:calculator/injectable.dart';
import 'package:calculator/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeToExtendedModeButton extends CalculatorButton {
  late final AppCubit _appCubit;
  final AppSettings _appSettings = getIt<AppSettings>();

  Widget buildButtonBody(BuildContext context) {
    _appCubit = BlocProvider.of<AppCubit>(context);

    return Container(
      decoration: BoxDecoration(
        color: _appSettings.currentMode.buttonColor,
        borderRadius: BorderRadius.circular(_appSettings.currentMode.buttonBorderRadius)
      ),
      child: Center(
        child: Icon(
          Icons.api,
          color: _appSettings.currentMode.operationButtonIconColor,
        ),
      ),
    );
  }

  void onTap() {
    _appSettings.changeMode(AppModes.EXTENDED);
    _appCubit.refresh();
  }
}
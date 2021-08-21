import 'package:calculator/components/controllers/app/app_cubit.dart';
import 'package:calculator/components/view/buttons/button.dart';
import 'package:calculator/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeToStandardModeButton extends CalculatorButton {
  late final AppCubit _appCubit;
  final AppMode _appModeSettings = AppSettings().currentMode;

  Widget buildButtonBody(BuildContext context) {
    _appCubit = BlocProvider.of<AppCubit>(context);

    return Container(
      decoration: BoxDecoration(
          color: _appModeSettings.buttonColor,
          borderRadius: BorderRadius.circular(_appModeSettings.buttonBorderRadius)
      ),
      child: Center(
        child: Icon(
          Icons.wifi_protected_setup,
          color: _appModeSettings.operationButtonIconColor,
        ),
      ),
    );
  }

  void onTap() {
    AppSettings().changeMode(AppModes.STANDARD);
    _appCubit.refresh();
  }
}
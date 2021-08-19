import 'package:flutter/material.dart';

class AppSettings {
  static final AppSettings _appSettings = AppSettings._();

  factory AppSettings() {
    return _appSettings;
  }

  AppSettings._();

  double _primaryFontSize = 24;
  double _buttonFontSize = 24;
  double _resultScreenFontSize = 32;
  double _buttonBorderRadius = 20;

  Color _numberButtonTextColor = Colors.white;
  Color _operationButtonIconColor = Colors.orange;

  double get primaryFontSize => _primaryFontSize;
  double get buttonFontSize => _buttonFontSize;
  double get resultScreenFontSize => _resultScreenFontSize;
  double get buttonBorderRadius => _buttonBorderRadius;

  Color get numberButtonTextColor => _numberButtonTextColor;
  Color get operationButtonIconColor => _operationButtonIconColor;

}
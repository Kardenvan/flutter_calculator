import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@singleton
class AppSettings {
  static final AppSettings _appSettings = AppSettings._();

  factory AppSettings() {
    return _appSettings;
  }

  AppSettings._();

  AppMode _currentMode = AppModes.STANDARD;

  AppMode get currentMode => _currentMode;

  void changeMode(AppMode mode) {
    _currentMode = mode;
  }
}

abstract class AppMode {
  const AppMode();

  abstract final double _primaryFontSize;
  abstract final double _buttonFontSize;
  abstract final double _resultScreenFontSize;
  abstract final double _buttonBorderRadius;

  abstract final Color _buttonColor;
  abstract final Color _numberButtonTextColor;
  abstract final Color _operationButtonIconColor;

  double get primaryFontSize => _primaryFontSize;
  double get buttonFontSize => _buttonFontSize;
  double get resultScreenFontSize => _resultScreenFontSize;
  double get buttonBorderRadius => _buttonBorderRadius;

  Color get buttonColor => _buttonColor;
  Color get numberButtonTextColor => _numberButtonTextColor;
  Color get operationButtonIconColor => _operationButtonIconColor;
}

@Named("Standard")
@Injectable(as: AppMode)
class StandardMode extends AppMode {
  const StandardMode();

  final double _primaryFontSize = 24;
  final double _buttonFontSize = 24;
  final double _resultScreenFontSize = 32;
  final double _buttonBorderRadius = 20;

  final Color _buttonColor = Colors.grey;
  final Color _numberButtonTextColor = Colors.black;
  final Color _operationButtonIconColor = Colors.orange;
}

@Named("Extended")
@Injectable(as: AppMode)
class ExtendedMode extends AppMode {
  const ExtendedMode();

  final double _primaryFontSize = 36;
  final double _buttonFontSize = 36;
  final double _resultScreenFontSize = 48;
  final double _buttonBorderRadius = 30;

  final Color _buttonColor = Colors.pinkAccent;
  final Color _numberButtonTextColor = Colors.white;
  final Color _operationButtonIconColor = Colors.green;
}

class AppModes {
  static const AppMode STANDARD = const StandardMode();
  static const AppMode EXTENDED = const ExtendedMode();
}
import 'package:flutter/material.dart';

enum AppStateType {LOADED}

class AppState {
  final AppStateType type;

  AppState({
    required this.type
  });
}
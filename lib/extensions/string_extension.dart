import 'package:flutter/material.dart';

extension StringCutting on String {
  String removeLast() {
    if (this.length > 0) {
      return substring(0, this.length - 1);
    }

    return '';
  }
}
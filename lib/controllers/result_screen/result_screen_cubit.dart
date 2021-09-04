import 'package:calculator/controllers/result_screen/result_screen_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:calculator/extensions/string_extension.dart';

class ResultScreenCubit extends Cubit<ResultScreenState> {
  ResultScreenCubit()
      : super(ResultScreenState(
          type: ResultScreenStateType.LOADED,
          text: ''
      )
  );

  String _text = '';

  void emitState({
    required ResultScreenStateType type,
    required String text
  }) {
    emit(ResultScreenState(type: type, text: text));
  }

  void eraseLastSymbol() {
    _text = _text.removeLast();
    reload();
  }

  void addSymbol(String symbol) {
    _text += symbol;
    reload();
  }

  void clearScreen() {
    _text = '';
    reload();
  }

  void reload() {
    emitState(
        type: ResultScreenStateType.LOADED,
        text: _text
    );
  }
}
enum ResultScreenStateType {LOADED}

class ResultScreenState {
  ResultScreenState({
    required this.type,
    required this.text
  });

  ResultScreenStateType type;
  String text;
}
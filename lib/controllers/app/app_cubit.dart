import 'package:calculator/controllers/app/app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppState(type: AppStateType.LOADED));

  void refresh() {
    _emitState(type: AppStateType.LOADED);
  }

  void _emitState({
    required AppStateType type
  }) {
    emit(AppState(type: type));
  }
}
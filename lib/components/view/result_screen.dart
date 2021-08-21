import 'package:calculator/components/controllers/result_screen/result_screen_cubit.dart';
import 'package:calculator/components/controllers/result_screen/result_screen_state.dart';
import 'package:calculator/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultScreen extends StatelessWidget {
  late final double _width;
  final Color _backgroundColor = Colors.grey;
  final AppMode _appSettings = AppSettings().currentMode;

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;

    return BlocBuilder<ResultScreenCubit, ResultScreenState>(
        builder: (context, state) {
          return Container(
            width: _width,
            decoration: BoxDecoration(
                color: _backgroundColor,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              alignment: Alignment.bottomRight,
              child: Text(
                state.text,
                style: TextStyle(
                    fontSize: _appSettings.resultScreenFontSize
                ),
              ),
            ),
          );
        }
    );
  }
}


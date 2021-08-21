import 'package:calculator/components/controllers/app/app_cubit.dart';
import 'package:calculator/components/controllers/app/app_state.dart';
import 'package:calculator/components/controllers/result_screen/result_screen_cubit.dart';
import 'package:calculator/components/view/buttons/buttons.dart';
import 'package:flutter/material.dart';
import 'package:calculator/components/view/result_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyCalculator extends StatelessWidget {
  const MyCalculator({Key? key}) : super(key: key);

  static double? _topMargin;
  static double _sideMargin = 10.0;

  @override
  Widget build(BuildContext context) {
    _topMargin = MediaQuery.of(context).size.height * 0.05;

    return Scaffold(
        body: BlocProvider(
          create: (context) => AppCubit(),
            child: BlocBuilder<AppCubit, AppState>(
              builder: (context, state) {
                return BlocProvider(
                  create: (context) => ResultScreenCubit(),
                  child: Container(
                    margin: EdgeInsets.only(
                        top: _topMargin!,
                        right: _sideMargin,
                        left: _sideMargin
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: ResultScreen(),
                          flex: 3,
                        ),
                        Expanded(
                          child: Container(
                            child: Buttons(),
                          ),
                          flex: 5,
                        ),
                      ],
                    ),
                  ),
                );
              }
            )
        )
      );
  }
}

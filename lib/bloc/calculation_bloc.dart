import 'dart:developer';

import 'package:calculator/bloc/calculation_event.dart';
import 'package:calculator/bloc/calculation_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculationBloc extends Bloc<CalcutationEvent, CalculatorState> {
  CalculationBloc() : super(CalculatorState(
            // firstOperand: 0,
            // secondOperand: 0,
            // operator:  '',
            // results: 0
            )) {
    on<ClearCalculations>((event, emit) {
      emit(CalculatorState(
        firstOperand: null,
        secondOperand: null,
        operator: null,
        results: null,
      ));
    });
    on<NumberPressed>(((event, emit) {
      // if (state.results != null) {
      //   state.results = null;
      //   state.firstOperand = event.number;
      //   return;
      // }
      // if (state.firstOperand == null) {
      //   state.firstOperand = event.number;
      //   return;
      // }
      // if (state.operator == null) {
      //   state.firstOperand = int.parse('${state.firstOperand}${event.number}');
      //   return;
      // }
      // if (state.secondOperand == null) {
      //   state.secondOperand = event.number;
      //   return;
      // }
      // state.secondOperand = int.parse('${state.operator}${event.number}');

      emit(CalculatorState(
        firstOperand: event.number,
        secondOperand: state.secondOperand,
        operator: state.operator,
        results: state.results,
      ));
    }));
    on<OperatorPressed>(
      (event, emit) {
        state.firstOperand ??= 0;
        state.operator = event.operator;
        emit(CalculatorState(
          firstOperand: state.firstOperand,
          secondOperand: state.secondOperand,
          operator: state.operator,
          results: state.results,
        ));
      },
    );
    on<CalculateResults>(
      (event, emit) {
        if (state.operator == null || state.secondOperand == null) {
          return;
        }
        switch (state.operator) {
          case '+':
            state.results = state.firstOperand! + state.secondOperand!;
            break;
          case '-':
            state.results = state.firstOperand! - state.secondOperand!;
            break;
          case '*':
            state.results = state.firstOperand! * state.secondOperand!;
            break;
          case '/':
            if (state.secondOperand == 0) {
              return;
            }
            state.results = state.firstOperand! ~/ state.secondOperand!;
            break;
        }

        emit(CalculatorState(
          firstOperand: state.results,
          secondOperand: null,
          operator: null,
          results: null,
        ));
      },
    );

    // on<Delete>((event, emit) {
    //   emit(CalculatorState(
    //     firstOperand: 0,
    //     secondOperand: 0,
    //     operator: 'none',
    //     results: 0,
    //   ));
    // });
  }
}

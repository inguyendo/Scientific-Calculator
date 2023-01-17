import 'dart:math' as math;

import 'package:math_expressions/math_expressions.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'calculator_state.dart';

part 'calculator_notifier.g.dart';

@riverpod
class CalculatorStateNotifier extends _$CalculatorStateNotifier {
  @override
  CalculatorState build() => const CalculatorState();

  void clear() {
    state = const CalculatorState();
  }

  void backspace() {
    if (state.equation.length == 1) {
      clear();
    } else {
      state = state.copyWith(
        equation: state.equation.substring(
          0,
          state.equation.length - 1,
        ),
      );
    }
  }

  void calculate() {
    final expression = state.equation
        .replaceAll(
          '×',
          '*',
        )
        .replaceAll(
          '÷',
          '/',
        )
        .replaceAll(
          'X!',
          '!',
        )
        .replaceAll(
          'π',
          '${math.pi}',
        )
        .replaceAll(
          'e',
          '${math.e}',
        );
    final result = calculateExpression(expression);
    state = state.copyWith(result: result);
  }

  String calculateExpression(String expression) {
    try {
      final parser = Parser();
      final exp = parser.parse(expression);
      final contextModel = ContextModel();
      final result = exp.evaluate(EvaluationType.REAL, contextModel);
      return result.toString();
    } catch (e) {
      return 'Error';
    }
  }

  void addText(String text) {
    if (state.equation == '0') {
      state = state.copyWith(equation: text);
    } else {
      state = state.copyWith(equation: state.equation + text);
    }
  }
}

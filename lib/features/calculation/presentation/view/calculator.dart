import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../state/calculator_notifier.dart';

@immutable
class AppColor {
  static const Color grey = Color.fromARGB(255, 134, 134, 134);
  static const Color red = Color.fromARGB(255, 255, 0, 0);

  const AppColor._();
}

class CalculatorView extends HookConsumerWidget {
  const CalculatorView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        width: size.width,
        child: Column(
          children: [
            const CalculatorResult(),
            Divider(height: size.height * 0.01, thickness: 1, color: AppColor.grey.withOpacity(0.2)),
            const CalculatorButtons(),
          ],
        ),
      ),
    );
  }
}

class CalculatorResult extends HookConsumerWidget {
  const CalculatorResult({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(calculatorStateNotifierProvider);
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.39,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Align(
            alignment: const Alignment(0.9, 1),
            child: Text(state.equation, style: const TextStyle(fontSize: 40, fontWeight: FontWeight.w400)),
          ),
          SizedBox(height: size.height * 0.05),
          Align(
            alignment: const Alignment(0.9, 1),
            child: Text(state.result, style: const TextStyle(fontSize: 50, fontWeight: FontWeight.w600)),
          ),
        ],
      ),
    );
  }
}

class CalculatorButtons extends HookConsumerWidget {
  const CalculatorButtons({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.6,
      child: Table(
        children: const [
          TableRow(
            children: [
              CalculatorButton(AppColor.grey, 1, '2nd'),
              CalculatorButton(AppColor.grey, 1, 'deg'),
              CalculatorButton(AppColor.grey, 1, 'sin'),
              CalculatorButton(AppColor.grey, 1, 'cos'),
              CalculatorButton(AppColor.grey, 1, 'tan'),
            ],
          ),
          TableRow(
            children: [
              CalculatorButton(AppColor.grey, 1, 'x^y'),
              CalculatorButton(AppColor.grey, 1, 'log'),
              CalculatorButton(AppColor.grey, 1, 'ln'),
              CalculatorButton(AppColor.grey, 1, '('),
              CalculatorButton(AppColor.grey, 1, ')'),
            ],
          ),
          TableRow(
            children: [
              CalculatorButton(AppColor.grey, 1, '√x'),
              CalculatorButton(AppColor.red, 1, 'AC'),
              CalculatorButton(AppColor.red, 1, '⌫'),
              CalculatorButton(AppColor.red, 1, '%'),
              CalculatorButton(AppColor.red, 1, '÷'),
            ],
          ),
          TableRow(
            children: [
              CalculatorButton(AppColor.grey, 1, 'X!'),
              CalculatorButton(AppColor.grey, 1, '7'),
              CalculatorButton(AppColor.grey, 1, '8'),
              CalculatorButton(AppColor.grey, 1, '9'),
              CalculatorButton(AppColor.red, 1, '×'),
            ],
          ),
          TableRow(
            children: [
              CalculatorButton(AppColor.grey, 1, '1⁄x'),
              CalculatorButton(AppColor.grey, 1, '4'),
              CalculatorButton(AppColor.grey, 1, '5'),
              CalculatorButton(AppColor.grey, 1, '6'),
              CalculatorButton(AppColor.red, 1, '-'),
            ],
          ),
          TableRow(
            children: [
              CalculatorButton(AppColor.grey, 1, 'π'),
              CalculatorButton(AppColor.grey, 1, '1'),
              CalculatorButton(AppColor.grey, 1, '2'),
              CalculatorButton(AppColor.grey, 1, '3'),
              CalculatorButton(AppColor.red, 1, '+'),
            ],
          ),
          TableRow(
            children: [
              CalculatorButton(AppColor.grey, 1, '?'),
              CalculatorButton(AppColor.grey, 1, 'e'),
              CalculatorButton(AppColor.grey, 1, '0'),
              CalculatorButton(AppColor.grey, 1, '.'),
              CalculatorButton(AppColor.red, 1, '='),
            ],
          ),
        ],
      ),
    );
  }
}

class CalculatorButton extends HookConsumerWidget {
  const CalculatorButton(this.color, this.height, this.text, {super.key});

  final String text;
  final Color color;
  final double height;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    void buttonPressed(String buttonText) {
      if (buttonText == 'sin') {
        ref.read(calculatorStateNotifierProvider.notifier).addText('sin(');
      } else if (buttonText == 'cos') {
        ref.read(calculatorStateNotifierProvider.notifier).addText('cos(');
      } else if (buttonText == 'tan') {
        ref.read(calculatorStateNotifierProvider.notifier).addText('tan(');
      } else if (buttonText == '√x') {
        ref.read(calculatorStateNotifierProvider.notifier).addText('sqrt(');
      } else if (buttonText == '1⁄x') {
        ref.read(calculatorStateNotifierProvider.notifier).addText('1/');
      } else if (buttonText == '?') {
        ref.read(calculatorStateNotifierProvider.notifier).addText('rand()');
      } else if (buttonText == 'ln') {
        ref.read(calculatorStateNotifierProvider.notifier).addText('ln(');
      } else if (buttonText == 'log') {
        ref.read(calculatorStateNotifierProvider.notifier).addText('log10(');
      } else if (buttonText == 'x^y') {
        ref.read(calculatorStateNotifierProvider.notifier).addText('^');
      } else if (buttonText == 'X!') {
        ref.read(calculatorStateNotifierProvider.notifier).addText('!');
      } else if (buttonText == 'AC') {
        ref.read(calculatorStateNotifierProvider.notifier).clear();
      } else if (buttonText == '⌫') {
        ref.read(calculatorStateNotifierProvider.notifier).backspace();
      } else if (buttonText == '=') {
        ref.read(calculatorStateNotifierProvider.notifier).calculate();
      } else {
        ref.read(calculatorStateNotifierProvider.notifier).addText(buttonText);
      }
    }

    return SizedBox(
      height: size.height * 0.6 / 7 * height,
      child: TextButton(
        onPressed: () => buttonPressed(text),
        style: TextButton.styleFrom(padding: EdgeInsets.zero, shape: const CircleBorder(), foregroundColor: Colors.grey),
        child: Container(alignment: Alignment.center, child: Text(text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: color))),
      ),
    );
  }
}

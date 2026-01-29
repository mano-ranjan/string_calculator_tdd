import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:string_calculator_tdd/string_calculator.dart';

void main() {
  test('initialize StringCalculator class', () {
    final StringCalculator calculator = StringCalculator();
  });

  test('return 0 if empty string', () {
    final StringCalculator calculator = StringCalculator();
    expect(calculator.add(''), 0);
  });

  test('single number returns its value', () {
    final StringCalculator calculator = StringCalculator();
    expect(calculator.add('1'), 1);
  });

  test('two comma separated numbers are added', () {
    final StringCalculator calculator = StringCalculator();
    expect(calculator.add('1,2'), 3);
  });

  test('multiple numbers are added', () {
    final StringCalculator calculator = StringCalculator();
    expect(calculator.add('1,2,3,4'), 10);
  });

  test('new lines are valid delimiters', () {
    final StringCalculator calculator = StringCalculator();
    expect(calculator.add('1\n2,3,4'), 10);
  });

  test('custom delimiter is supported', () {
    final StringCalculator calculator = StringCalculator();
    expect(calculator.add('//;\n1;2'), 3);
  });

  test('negative numbers throw exception with all values', () {
    final calculator = StringCalculator();

    expect(
      () => calculator.add('1,-2,-3'),
      throwsA(
        isA<Exception>().having(
          (e) => e.toString(),
          'message',
          allOf(contains('-2'), contains('-3')),
        ),
      ),
    );
  });
}

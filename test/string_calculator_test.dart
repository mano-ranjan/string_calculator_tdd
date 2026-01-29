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
}

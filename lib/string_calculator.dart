class StringCalculator {
  int add(String numberList) {
    if (numberList.isEmpty) {
      return 0;
    }

    final delimiter = _extractDelimiter(numberList);
    final numbers = _removeDelimiterHeader(numberList);

    final parts = numbers.split(delimiter);
    final negatives = <int>[];

    final sum = _sumValues(parts, negatives);

    _throwIfNegativesExist(negatives);

    return sum;
  }

  RegExp _extractDelimiter(String input) {
    if (input.startsWith('//')) {
      return RegExp(input[2]);
    }
    return RegExp('[,\n]');
  }

  String _removeDelimiterHeader(String input) {
    if (input.startsWith('//')) {
      return input.substring(4);
    }
    return input;
  }

  int _sumValues(List<String> parts, List<int> negatives) {
    int sum = 0;

    for (final part in parts) {
      final value = int.parse(part);

      if (value < 0) {
        negatives.add(value);
      }

      sum += value;
    }

    return sum;
  }

  void _throwIfNegativesExist(List<int> negatives) {
    if (negatives.isNotEmpty) {
      throw Exception('negative numbers not allowed ${negatives.join(',')}');
    }
  }
}

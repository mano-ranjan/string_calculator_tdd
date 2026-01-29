class StringCalculator {
  int add(String numberList) {
    if (numberList.isEmpty) {
      return 0;
    }

    RegExp delimiter = RegExp('[,\n]');

    if (numberList.startsWith('//')) {
      delimiter = RegExp(numberList[2]);
      numberList = numberList.substring(4);
    }

    final List<String> splittedParts = numberList.split(delimiter);
    int sum = 0;
    final List<int> negativeNumberList = [];

    for (String part in splittedParts) {
      int parsedValue = int.parse(part);

      if (parsedValue < 0) {
        negativeNumberList.add(parsedValue);
      }

      sum += parsedValue;
    }

    if (negativeNumberList.isNotEmpty) {
      throw Exception(
        'negative numbers not allowed ${negativeNumberList.join(',')}',
      );
    }

    return sum;
  }
}

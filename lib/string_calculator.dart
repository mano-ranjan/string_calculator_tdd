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

    for (String part in splittedParts) {
      sum += int.parse(part);
    }

    return sum;
  }
}

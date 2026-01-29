class StringCalculator {
  int add(String numberList) {
    if (numberList.isEmpty) {
      return 0;
    }

    final List<String> splittedParts = numberList.split(RegExp('[,\n]'));
    int sum = 0;

    for (String part in splittedParts) {
      sum += int.parse(part);
    }

    return sum;
  }
}

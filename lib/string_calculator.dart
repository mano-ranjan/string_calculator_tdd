class StringCalculator {
  int add(String numberList) {
    if (numberList.isEmpty) {
      return 0;
    }

    return int.parse(numberList);
  }
}

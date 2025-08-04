String createPhoneNumber(List<int> numbers) {
  String part1 = numbers.sublist(0, 3).join(); // (123)
  String part2 = numbers.sublist(3, 6).join(); // 456
  String part3 = numbers.sublist(6, 10).join(); // 7890

  return '($part1) $part2-$part3';
}

void main() {
  print(createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]));
  // Output: (123) 456-7890
}

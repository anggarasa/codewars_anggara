int find(List<int> integers) {
  // tentukan mayoritas paritas dari 3 elemen pertama
  int evenCount = integers.take(3).where((n) => n.isEven).length;
  bool majorityEven = evenCount >= 2;

  // cari yang berbeda
  return integers.firstWhere((n) => majorityEven ? n.isOdd : n.isEven);
}

void main() {
  print(find([2, 4, 0, 100, 4, 11, 2602, 36])); // 11
  print(find([160, 3, 1719, 19, 11, 13, -21])); // 160
}

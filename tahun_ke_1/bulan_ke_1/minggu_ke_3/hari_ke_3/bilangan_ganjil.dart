int rowSumOddNumbers(int n) {
  return n * n * n;
}

void main() {
  print(rowSumOddNumbers(1)); // 1
  print(rowSumOddNumbers(2)); // 8 (3 + 5)
  print(rowSumOddNumbers(3)); // 27 (7 + 9 + 11)
  print(rowSumOddNumbers(4)); // 64
  print(rowSumOddNumbers(5)); // 125
}

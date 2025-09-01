List<List<int>> pyramid(int n) {
  List<List<int>> result = [];
  for (int i = 1; i <= n; i++) {
    result.add(List.filled(i, 1));
  }
  return result;
}

void main() {
  print(pyramid(0)); // []
  print(pyramid(1)); // [[1]]
  print(pyramid(2)); // [[1], [1, 1]]
  print(pyramid(3)); // [[1], [1, 1], [1, 1, 1]]
}

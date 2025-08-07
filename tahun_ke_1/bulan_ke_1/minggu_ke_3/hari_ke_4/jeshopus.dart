List<T> josephusPermutation<T>(List<T> items, int k) {
  List<T> result = [];
  int index = 0;

  while (items.isNotEmpty) {
    index = (index + k - 1) % items.length;
    result.add(items.removeAt(index));
  }

  return result;
}

void main() {
  print(josephusPermutation([1, 2, 3, 4, 5, 6, 7], 3));
  // Output: [3, 6, 2, 7, 5, 1, 4]
}

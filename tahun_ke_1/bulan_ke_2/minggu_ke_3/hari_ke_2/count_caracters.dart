Map<String, int> count(String s) {
  Map<String, int> result = {};
  for (var ch in s.split('')) {
    result[ch] = (result[ch] ?? 0) + 1;
  }
  return result;
}

void main() {
  print(count("aba")); // {a: 2, b: 1}
  print(count("")); // {}
}

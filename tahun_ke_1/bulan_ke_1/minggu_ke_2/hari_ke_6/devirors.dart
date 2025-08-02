dynamic divisors(int n) {
  List<int> result = [];

  for (int i = 2; i < n; i++) {
    if (n % i == 0) {
      result.add(i);
    }
  }

  return result.isEmpty ? "$n is prime" : result;
}

void main() {
  print(divisors(12));  // [2, 3, 4, 6]
  print(divisors(25));  // [5]
  print(divisors(13));  // "13 is prime"
}

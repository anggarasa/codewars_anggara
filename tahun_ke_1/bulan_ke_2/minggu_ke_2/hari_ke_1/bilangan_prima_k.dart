List<int> countKprimes(int k, int start, int end) {
  // fungsi bantu: menghitung jumlah faktor prima
  int countPrimeFactors(int n) {
    int count = 0;
    int num = n;
    int d = 2;
    while (num > 1 && d * d <= num) {
      while (num % d == 0) {
        count++;
        num ~/= d;
      }
      d++;
    }
    if (num > 1) count++; // sisa prima terakhir
    return count;
  }

  List<int> result = [];
  for (int i = start; i <= end; i++) {
    if (countPrimeFactors(i) == k) {
      result.add(i);
    }
  }
  return result;
}

int puzzle(int s) {
  List<int> primes = countKprimes(1, 2, s);
  List<int> threePrimes = countKprimes(3, 2, s);
  List<int> sevenPrimes = countKprimes(7, 2, s);

  int count = 0;
  for (int a in primes) {
    for (int b in threePrimes) {
      for (int c in sevenPrimes) {
        if (a + b + c == s) {
          count++;
        }
      }
    }
  }
  return count;
}

void main(List<String> args) {
  print(countKprimes(5, 500, 600));
  // [500, 520, 552, 567, 588, 592, 594]

  print(puzzle(138)); // 1  (2 + 8 + 128)
  print(puzzle(143)); // 2  (3+12+128, 7+8+128)
}

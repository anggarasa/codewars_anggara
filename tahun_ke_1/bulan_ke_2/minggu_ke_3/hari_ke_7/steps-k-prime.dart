List<List<int>> kprimesStep(int k, int step, int start, int end) {
  // fungsi helper untuk hitung jumlah faktor prima (dengan perkalian)
  int countPrimeFactors(int n) {
    int count = 0;
    int num = n;
    int factor = 2;
    while (num > 1 && factor * factor <= num) {
      while (num % factor == 0) {
        count++;
        num ~/= factor;
      }
      factor++;
    }
    if (num > 1) count++; // sisa prima terakhir
    return count;
  }

  // cari semua bilangan k-prime
  List<int> kprimes = [];
  for (int i = start; i <= end; i++) {
    if (countPrimeFactors(i) == k) {
      kprimes.add(i);
    }
  }

  // cari pasangan dengan step
  List<List<int>> result = [];
  for (int i = 0; i < kprimes.length; i++) {
    for (int j = i + 1; j < kprimes.length; j++) {
      if (kprimes[j] - kprimes[i] == step) {
        result.add([kprimes[i], kprimes[j]]);
      }
    }
  }

  return result;
}

void main() {
  print(kprimesStep(2, 2, 0, 50));
  // [[4, 6], [33, 35]]

  print(kprimesStep(2, 10, 0, 50));
  // [[4, 14], [15, 25], [25, 35], [39, 49]]

  print(kprimesStep(5, 20, 0, 50));
  // []
}

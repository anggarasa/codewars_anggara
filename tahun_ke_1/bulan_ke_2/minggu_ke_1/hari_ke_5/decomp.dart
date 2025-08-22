String decomp(int n) {
  // Helper: cari semua bilangan prima <= n
  List<int> getPrimes(int limit) {
    List<bool> isPrime = List.filled(limit + 1, true);
    isPrime[0] = false;
    if (limit >= 1) isPrime[1] = false;

    for (int i = 2; i * i <= limit; i++) {
      if (isPrime[i]) {
        for (int j = i * i; j <= limit; j += i) {
          isPrime[j] = false;
        }
      }
    }

    List<int> primes = [];
    for (int i = 2; i <= limit; i++) {
      if (isPrime[i]) primes.add(i);
    }
    return primes;
  }

  // Helper: hitung pangkat prime di n!
  int countExponent(int n, int p) {
    int exp = 0;
    int power = p;
    while (power <= n) {
      exp += n ~/ power;
      if (power > n ~/ p) break; // Hindari overflow
      power *= p;
    }
    return exp;
  }

  List<int> primes = getPrimes(n);
  List<String> result = [];

  for (int p in primes) {
    int exp = countExponent(n, p);
    if (exp == 1) {
      result.add("$p");
    } else {
      result.add("$p^$exp");
    }
  }

  return result.join(" * ");
}

void main() {
  print(decomp(12)); // 2^10 * 3^5 * 5^2 * 7 * 11
  print(decomp(22)); // 2^19 * 3^9 * 5^4 * 7^3 * 11^2 * 13 * 17 * 19
  print(decomp(25)); // 2^22 * 3^10 * 5^6 * 7^3 * 11^2 * 13 * 17 * 19 * 23
}

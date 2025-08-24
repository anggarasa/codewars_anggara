String primeFactors(int n) {
  int num = n;
  int factor = 2;
  Map<int, int> factors = {};

  while (num > 1) {
    while (num % factor == 0) {
      factors[factor] = (factors[factor] ?? 0) + 1;
      num ~/= factor;
    }
    factor++;
    if (factor * factor > num && num > 1) {
      factors[num] = (factors[num] ?? 0) + 1;
      break;
    }
  }

  // Bangun string hasil
  StringBuffer sb = StringBuffer();
  for (var key in factors.keys.toList()..sort()) {
    int exponent = factors[key]!;
    if (exponent == 1) {
      sb.write("($key)");
    } else {
      sb.write("(${key}**$exponent)");
    }
  }
  return sb.toString();
}

void main() {
  print(primeFactors(86240)); // Output: (2**5)(5)(7**2)(11)
  print(primeFactors(12));    // Output: (2**2)(3)
  print(primeFactors(7775460)); // Contoh lebih besar
}

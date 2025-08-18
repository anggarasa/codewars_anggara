import 'dart:math';

BigInt height(int n, int m) {
  if (n <= 0 || m <= 0) return BigInt.zero;

  final int kMax = min(n, m);
  BigInt sum = BigInt.zero;
  BigInt c = BigInt.one; // C(m,0)

  for (int k = 1; k <= kMax; k++) {
    // C(m,k) = C(m,k-1) * (m - k + 1) / k
    c = (c * BigInt.from(m - k + 1)) ~/ BigInt.from(k);
    sum += c;
  }
  return sum;
}

void main() {
  print(height(0, 14));   // 0
  print(height(2, 0));    // 0
  print(height(2, 14));   // 105
  print(height(7, 20));   // 137979
}

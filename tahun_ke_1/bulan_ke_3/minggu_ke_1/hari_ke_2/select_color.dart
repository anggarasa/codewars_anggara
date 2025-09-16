int checkChoose(int m, int n) {
  // konversi m ke BigInt supaya aman
  BigInt target = BigInt.from(m);

  for (int x = 1; x <= n; x++) {
    BigInt comb = _nCr(n, x);

    if (comb == target) {
      return x;
    }
  }

  return -1;
}

BigInt _nCr(int n, int r) {
  if (r > n) return BigInt.zero;
  if (r == 0 || r == n) return BigInt.one;

  // kombinasi lebih efisien dihitung dengan r = min(r, n-r)
  int k = r < (n - r) ? r : (n - r);

  BigInt result = BigInt.one;
  for (int i = 1; i <= k; i++) {
    result = result * BigInt.from(n - (i - 1));
    result = result ~/ BigInt.from(i);
  }
  return result;
}

void main() {
  print(checkChoose(6, 4)); // 2
  print(checkChoose(4, 4)); // 1
  print(checkChoose(4, 2)); // -1
  print(checkChoose(35, 7)); // 3
  print(checkChoose(36, 7)); // -1

  BigInt a = BigInt.parse("47129212243960");
  print(checkChoose(a.toInt(), 50)); // 20
  print(checkChoose((a + BigInt.one).toInt(), 50)); // -1
}

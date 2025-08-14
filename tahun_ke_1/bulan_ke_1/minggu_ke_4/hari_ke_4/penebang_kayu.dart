int cutLog(List<int> p, int n) {
  // dp[i] = harga maksimal untuk panjang i
  final dp = List<int>.filled(n + 1, 0);

  for (var len = 1; len <= n; len++) {
    var maxVal = -1;
    for (var cut = 1; cut <= len; cut++) {
      maxVal = maxVal < p[cut] + dp[len - cut]
          ? p[cut] + dp[len - cut]
          : maxVal;
    }
    dp[len] = maxVal;
  }

  return dp[n];
}

void main() {
  final p = [0, 1, 5, 8, 9, 10];
  print(cutLog(p, 5)); // output optimal untuk panjang 5
}

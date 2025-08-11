int chooseBestSum(int t, int k, List<int> ls) {
  if (k > ls.length) return -1;

  int best = -1;

  void dfs(int start, int depth, int sum) {
    if (depth == k) {
      if (sum <= t && sum > best) best = sum;
      return;
    }

    // indeks batas agar masih tersisa cukup elemen untuk melengkapi k
    for (int i = start; i <= ls.length - (k - depth); i++) {
      int nextSum = sum + ls[i];
      // pruning: jika nextSum > t, skip cabang ini
      if (nextSum > t) continue;
      dfs(i + 1, depth + 1, nextSum);
    }
  }

  dfs(0, 0, 0);
  return best;
}

void main() {
  print(chooseBestSum(174, 3, [50, 55, 57, 58, 60])); // 173
  print(chooseBestSum(163, 3, [50, 55, 56, 57, 58])); // 163
  print(chooseBestSum(163, 3, [50])); // -1
  print(chooseBestSum(230, 3, [91, 74, 73, 85, 73, 81, 87])); // 228
}

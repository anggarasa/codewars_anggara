import 'dart:math';

/// Fungsi utama: hitung statistik produk partisi
String part(int n) {
  // 1. Ambil semua produk dari partisi n
  Set<int> prods = _partitionProducts(n);

  // 2. Ubah ke list & sort
  List<int> sorted = prods.toList()..sort();

  // 3. Hitung range
  int range = sorted.last - sorted.first;

  // 4. Hitung average
  double avg = sorted.reduce((a, b) => a + b) / sorted.length;

  // 5. Hitung median
  double median;
  int m = sorted.length;
  if (m % 2 == 1) {
    median = sorted[m ~/ 2].toDouble();
  } else {
    median = (sorted[m ~/ 2 - 1] + sorted[m ~/ 2]) / 2.0;
  }

  return "Range: $range Average: ${avg.toStringAsFixed(2)} Median: ${median.toStringAsFixed(2)}";
}

/// Helper: generate semua produk dari partisi n
Set<int> _partitionProducts(int n, [int maxVal = 0]) {
  if (maxVal == 0) maxVal = n;

  Set<int> result = {};

  if (n == 0) {
    result.add(1); // basis: produk kosong = 1
    return result;
  }

  for (int i = min(n, maxVal); i >= 1; i--) {
    // Ambil partisi dengan elemen pertama i
    Set<int> subProds = _partitionProducts(n - i, i);
    for (int p in subProds) {
      result.add(i * p);
    }
  }

  return result;
}

void main() {
  print(part(5));  // → "Range: 5 Average: 3.50 Median: 3.50"
  print(part(8));  // → "Range: 17 Average: 8.29 Median: 7.50"
  print(part(40)); // cepat, hasil panjang = 2699
}

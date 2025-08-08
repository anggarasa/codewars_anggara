void main() {
  int n = 1234567;

  // 1. Simpan pola yang berulang
  List<int> pattern = [1, 10, 9, 12, 3, 4];

  int prev = -1; // buat menyimpan nilai sebelumnya
  int current = n;

  while (prev != current) {
    prev = current;

    // 2. Ubah angka jadi list digit dari kanan ke kiri
    List<int> digits = current
        .toString()
        .split('')
        .map(int.parse)
        .toList()
        .reversed
        .toList();

    // 3. Kalikan tiap digit dengan elemen pola
    int sum = 0;
    for (int i = 0; i < digits.length; i++) {
      sum += digits[i] * pattern[i % pattern.length];
    }

    // 4. Update current
    current = sum;

    print('Hasil sementara: $current');
  }

  print('Hasil akhir: $current');
}

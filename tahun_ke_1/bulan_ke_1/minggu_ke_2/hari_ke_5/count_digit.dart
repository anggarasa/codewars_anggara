int digitalRoot(int n) {
  // Basis: kalau sudah satu digit, langsung return
  if (n < 10) return n;

  // Hitung jumlah digit-digitnya
  int sum = n.toString().split('').map(int.parse).reduce((a, b) => a + b);

  // Rekursif ke digitalRoot lagi
  return digitalRoot(sum);
}

void main() {
  print(digitalRoot(16)); // Output: 7
  print(digitalRoot(942)); // Output: 6
  print(digitalRoot(132189)); // Output: 6
  print(digitalRoot(493193)); // Output: 2
}

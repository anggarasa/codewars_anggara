int nextHigher(int n) {
  int c = n & -n;               // bit paling kanan 1
  int r = n + c;                // naikkan angka
  return (((r ^ n) >> 2) ~/ c) | r;
}

void main() {
  print(nextHigher(129));     // 130
  print(nextHigher(127));     // 191
  print(nextHigher(1));       // 2
  print(nextHigher(323423));  // 323439
}

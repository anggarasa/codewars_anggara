import 'dart:math';

bool isSquare(int n) {
  if (n < 0) return false;

  int root = sqrt(n).toInt(); // pakai square root lalu buletin ke bawah
  return root * root == n;
}

void main() {
  print(isSquare(-1)); // false
  print(isSquare(0)); // true
  print(isSquare(3)); // false
  print(isSquare(4)); // true
  print(isSquare(25)); // true
  print(isSquare(26)); // false
}

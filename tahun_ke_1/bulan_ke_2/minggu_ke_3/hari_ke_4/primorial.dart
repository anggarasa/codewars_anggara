int numPrimorial(int n) {
  bool isPrime(int x) {
    if (x < 2) return false;
    for (int i = 2; i * i <= x; i++) {
      if (x % i == 0) return false;
    }
    return true;
  }

  int count = 0;
  int num = 2;
  int result = 1;

  while (count < n) {
    if (isPrime(num)) {
      result *= num;
      count++;
    }
    num++;
  }

  return result;
}

void main() {
  print(numPrimorial(3)); // 30  -> 2*3*5
  print(numPrimorial(5)); // 2310 -> 2*3*5*7*11
  print(numPrimorial(6)); // 30030 -> 2*3*5*7*11*13
}

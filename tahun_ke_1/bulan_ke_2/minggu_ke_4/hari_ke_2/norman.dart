int romanToInt(String s) {
  // Peta nilai simbol
  Map<String, int> values = {
    "I": 1,
    "V": 5,
    "X": 10,
    "L": 50,
    "C": 100,
    "D": 500,
    "M": 1000,
  };

  int total = 0;

  for (int i = 0; i < s.length; i++) {
    int current = values[s[i]]!;
    int next = (i + 1 < s.length) ? values[s[i + 1]]! : 0;

    if (current < next) {
      total -= current; // aturan subtractive (IV, IX, XL, XC, dll)
    } else {
      total += current;
    }
  }

  return total;
}

void main() {
  print(romanToInt("MM")); // 2000
  print(romanToInt("MDCLXVI")); // 1666
  print(romanToInt("M")); // 1000
  print(romanToInt("CD")); // 400
  print(romanToInt("XC")); // 90
  print(romanToInt("XL")); // 40
  print(romanToInt("I")); // 1
}

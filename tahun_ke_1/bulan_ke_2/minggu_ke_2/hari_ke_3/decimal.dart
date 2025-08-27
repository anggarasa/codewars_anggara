// helper: convert int -> char (0-9, A-Z)
String intToChar(int n) {
  if (n < 10) return n.toString();
  return String.fromCharCode('A'.codeUnitAt(0) + (n - 10));
}

// helper: convert char -> int (0-9, A-Z)
int charToInt(String c) {
  if (RegExp(r'^[0-9]$').hasMatch(c)) return int.parse(c);
  return c.codeUnitAt(0) - 'A'.codeUnitAt(0) + 10;
}

// decimal -> factorial string
String dec2FactString(int nb) {
  if (nb == 0) return "0";
  int i = 1;
  List<String> digits = [];
  int n = nb;

  while (n > 0) {
    int rem = n % i;
    digits.add(intToChar(rem));
    n ~/= i;
    i++;
  }

  return digits.reversed.join();
}

// factorial string -> decimal
int factString2Dec(String str) {
  int n = 0;
  int len = str.length;
  for (int i = 0; i < len; i++) {
    int digit = charToInt(str[i]);
    int fact = 1;
    for (int j = 1; j <= len - i - 1; j++) {
      fact *= j;
    }
    n += digit * fact;
  }
  return n;
}

void main() {
  print(dec2FactString(463)); // "341010"
  print(factString2Dec("341010")); // 463
}

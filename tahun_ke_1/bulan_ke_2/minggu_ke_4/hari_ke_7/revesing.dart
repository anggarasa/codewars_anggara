// import 'dart:math';

String decode(String r) {
  // 1. Pisahkan angka num dan string encoded
  int i = 0;
  while (i < r.length && RegExp(r'[0-9]').hasMatch(r[i])) {
    i++;
  }
  int num = int.parse(r.substring(0, i));
  String encoded = r.substring(i);

  // 2. Cari modular inverse num mod 26
  int? inv;
  for (int k = 1; k < 26; k++) {
    if ((num * k) % 26 == 1) {
      inv = k;
      break;
    }
  }
  if (inv == null) return "Impossible to decode";

  // 3. Decode tiap huruf
  StringBuffer result = StringBuffer();
  for (var c in encoded.split('')) {
    int y = c.codeUnitAt(0) - 'a'.codeUnitAt(0);
    int x = (inv * y) % 26;
    result.write(String.fromCharCode(x + 'a'.codeUnitAt(0)));
  }

  return result.toString();
}

void main() {
  print(decode("6015ekx"));   // mer
  print(decode("5057aan"));   // Impossible to decode
}

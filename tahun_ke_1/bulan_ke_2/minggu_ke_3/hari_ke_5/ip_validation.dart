bool isValidIP(String input) {
  final parts = input.split('.');
  if (parts.length != 4) return false;

  for (final part in parts) {
    // Tidak boleh kosong & hanya digit
    if (part.isEmpty || !RegExp(r'^\d+$').hasMatch(part)) {
      return false;
    }

    // Tidak boleh leading zero kecuali "0"
    if (part.length > 1 && part.startsWith('0')) {
      return false;
    }

    final value = int.tryParse(part);
    if (value == null || value < 0 || value > 255) {
      return false;
    }
  }

  return true;
}

void main() {
  print(isValidIP("1.2.3.4")); // true
  print(isValidIP("123.45.67.89")); // true
  print(isValidIP("1.2.3")); // false
  print(isValidIP("1.2.3.4.5")); // false
  print(isValidIP("123.456.78.90")); // false (456 > 255)
  print(isValidIP("123.045.067.089")); // false (leading zero)
}

bool validBraces(String braces) {
  List<String> stack = [];
  Map<String, String> pairs = {')': '(', ']': '[', '}': '{'};

  for (var ch in braces.split('')) {
    if (pairs.containsValue(ch)) {
      // Jika karakter adalah tanda buka -> push ke stack
      stack.add(ch);
    } else if (pairs.containsKey(ch)) {
      // Jika karakter adalah tanda tutup -> cek pasangan
      if (stack.isEmpty || stack.removeLast() != pairs[ch]) {
        return false;
      }
    }
  }

  // Harus kosong di akhir agar valid
  return stack.isEmpty;
}

void main() {
  print(validBraces("(){}[]")); // true
  print(validBraces("([{}])")); // true
  print(validBraces("(}")); // false
  print(validBraces("[(])")); // false
  print(validBraces("[({})](]")); // false
}

int consonantValue(String s) =>
    s
      .split(RegExp(r"[aeiou]")) // Pisahkan berdasarkan vokal
      .map((sub) => sub
          .runes
          .map((c) => c - 96) // 'a' = 97 ASCII
          .fold(0, (a, b) => a + b))
      .fold(0, (a, b) => a > b ? a : b);

void main() {
  print(consonantValue("zodiac"));   // 26
  print(consonantValue("strength")); // 57
}

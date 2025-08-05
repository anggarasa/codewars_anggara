int countVowels(String str) {
  const vowels = ['a', 'e', 'i', 'o', 'u'];
  int count = 0;

  for (var char in str.split('')) {
    if (vowels.contains(char)) {
      count++;
    }
  }

  return count;
}

void main() {
  print(countVowels("hello world")); // 3 (e, o, o)
  print(countVowels("flutter developer")); // 6 (u, e, e, e, o, e)
  print(countVowels("zzz")); // 0
}

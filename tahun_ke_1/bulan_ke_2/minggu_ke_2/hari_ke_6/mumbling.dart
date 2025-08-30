String accum(String str) {
  return str
      .split('')
      .asMap()
      .entries
      .map((entry) {
        int i = entry.key;
        String ch = entry.value;
        return ch.toUpperCase() + ch.toLowerCase() * i;
      })
      .join('-');
}

// karena Dart tidak support operator * untuk String, kita buat extension helper:
extension RepeatString on String {
  String operator *(int times) => List.filled(times, this).join();
}

void main() {
  print(accum("abcd")); // "A-Bb-Ccc-Dddd"
  print(accum("RqaEzty")); // "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
  print(accum("cwAt")); // "C-Ww-Aaa-Tttt"
}

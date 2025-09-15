int countSmileys(List<String> arr) {
  final regex = RegExp(r'^[:;][-~]?[)D]$');
  return arr.where((s) => regex.hasMatch(s)).length;
}

void main() {
  print(countSmileys([':)', ';(', ';}', ':-D']));       // 2
  print(countSmileys([';D', ':-(', ':-)', ';~)']));     // 3
  print(countSmileys([';]', ':[', ';*', ':$', ';-D'])); // 1
  print(countSmileys([]));                              // 0
}

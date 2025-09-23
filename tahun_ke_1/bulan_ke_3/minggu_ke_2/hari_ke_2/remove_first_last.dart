dynamic array(String str) {
  if (str.isEmpty) return null;

  List<String> parts = str.split(',');
  if (parts.length <= 2) return null;

  return parts.sublist(1, parts.length - 1).join(' ');
}

void main() {
  print(array("1,2,3")); // "2"
  print(array("1,2,3,4")); // "2 3"
  print(array("1,2,3,4,5")); // "2 3 4"
  print(array("")); // null
  print(array("1")); // null
  print(array("1,2")); // null
}

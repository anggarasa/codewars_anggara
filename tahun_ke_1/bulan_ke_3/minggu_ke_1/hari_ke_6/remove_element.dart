List<dynamic> removeEveryOther(List<dynamic> myList) {
  List<dynamic> result = [];
  for (int i = 0; i < myList.length; i += 2) {
    result.add(myList[i]);
  }
  return result;
}

void main() {
  print(removeEveryOther(["Keep", "Remove", "Keep", "Remove", "Keep"]));
  // Output: ["Keep", "Keep", "Keep"]

  print(removeEveryOther([1, 2, 3, 4, 5, 6]));
  // Output: [1, 3, 5]

  print(removeEveryOther(["a", "b", "c", "d"]));
  // Output: ["a", "c"]
}

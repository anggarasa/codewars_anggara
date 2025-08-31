String longestConsec(List<String> strarr, int k) {
  int n = strarr.length;
  if (n == 0 || k > n || k <= 0) return "";

  String longest = "";
  for (int i = 0; i <= n - k; i++) {
    String temp = strarr.sublist(i, i + k).join();
    if (temp.length > longest.length) {
      longest = temp;
    }
  }
  return longest;
}

void main() {
  print(
    longestConsec(["tree", "foling", "trashy", "blue", "abcdef", "uvwxyz"], 2),
  );
  // Output: "folingtrashy"

  print(
    longestConsec([
      "zone",
      "abigail",
      "theta",
      "form",
      "libe",
      "zas",
      "theta",
      "abigail",
    ], 2),
  );
  // Output: "abigailtheta"

  print(longestConsec([], 3));
  // Output: ""

  print(longestConsec(["a", "bb", "ccc", "dddd"], 2));
  // Output: "cccdddd"
}

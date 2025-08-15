List<List<int>> solEqua(int n) {
  final results = <List<int>>[];

  for (var a = 1; a * a <= n; a++) {
    if (n % a != 0) continue;
    var b = n ~/ a;

    // x = (a + b) / 2, y = (b - a) / 4
    if (((a + b) % 2 == 0) && ((b - a) % 4 == 0)) {
      var x = (a + b) ~/ 2;
      var y = (b - a) ~/ 4;

      if (x >= 0 && y >= 0) {
        results.add([x, y]);
      }
    }
  }

  // Urutkan berdasarkan x menurun
  results.sort((r1, r2) => r2[0].compareTo(r1[0]));
  return results;
}

void main() {
  print(solEqua(90005));
  // [[45003, 22501], [9003, 4499], [981, 467], [309, 37]]

  print(solEqua(90002));
  // []
}

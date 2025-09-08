String bowling_pins(List<int> pins) {
  // layout dasar (10 pin)
  List<List<String>> layout = [
    ["I", " ", "I", " ", "I", " ", "I"], // 7,8,9,10
    [" ", "I", " ", "I", " ", "I", " "], // 4,5,6
    [" ", " ", "I", " ", "I", " ", " "], // 2,3
    [" ", " ", " ", "I", " ", " ", " "], // 1
  ];

  // mapping pin -> (row, col)
  Map<int, List<int>> positions = {
    7: [0, 0],
    8: [0, 2],
    9: [0, 4],
    10: [0, 6],
    4: [1, 1],
    5: [1, 3],
    6: [1, 5],
    2: [2, 2],
    3: [2, 4],
    1: [3, 3],
  };

  // hapus pin yg ada di daftar
  for (int p in pins) {
    if (positions.containsKey(p)) {
      var pos = positions[p]!;
      layout[pos[0]][pos[1]] = " ";
    }
  }

  // gabungkan ke string
  return layout.map((row) => row.join()).join("\n");
}

void main() {
  print(bowling_pins([]));
  // Output:
  // I I I I
  //  I I I
  //   I I
  //    I

  print(bowling_pins([3, 5, 9]));
  // Output:
  // I I   I
  //  I   I
  //   I
  //    I
}

int dblLinear(int n) {
  final u = <int>[1];
  var i = 0, j = 0;

  while (u.length <= n) {
    final nextY = 2 * u[i] + 1;
    final nextZ = 3 * u[j] + 1;
    final nextVal = nextY < nextZ ? nextY : nextZ;

    u.add(nextVal);

    if (nextVal == nextY) i++;
    if (nextVal == nextZ) j++;
  }

  return u[n];
}

void main() {
  print(dblLinear(10)); // 22
}

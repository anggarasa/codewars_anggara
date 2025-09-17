import 'dart:math';

double areaOfPolygonInsideCircle(double r, int n) {
  double area = 0.5 * n * r * r * sin((2 * pi) / n);
  return double.parse(area.toStringAsFixed(3));
}

void main() {
  print(areaOfPolygonInsideCircle(3.0, 3)); // 11.691
  print(areaOfPolygonInsideCircle(5.8, 7)); // 92.053
  print(areaOfPolygonInsideCircle(4.0, 5)); // 38.042
}

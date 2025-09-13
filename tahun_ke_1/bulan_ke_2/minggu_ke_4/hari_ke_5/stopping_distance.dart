import 'dart:math' as Math;

const double g = 9.81;  // gravitasi

double dist(double v, double mu) {
  double vms = v * 1000 / 3600; // konversi km/jam → m/s
  double reaction = vms * 1; // t = 1 detik
  double braking = (vms * vms) / (2 * mu * g);
  return reaction + braking;
}

double speed(double d, double mu) {
  double vms = mu * g * (-1 + (1 + (2 * d) / (mu * g)).sqrt());
  return vms * 3600 / 1000; // konversi m/s → km/jam
}

extension on double {
  double sqrt() => Math.sqrt(this);
}


void main() {
  print(dist(100, 0.7));  // ~83.9598760937531
  print(speed(83.9598760937531, 0.7)); // ~100.0
}

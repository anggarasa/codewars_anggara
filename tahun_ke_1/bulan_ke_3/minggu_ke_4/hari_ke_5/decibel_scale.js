function dBScale(intensity) {
  const threshold = 1e-12; // 10^-12
  return 10 * Math.log10(intensity / threshold);
}

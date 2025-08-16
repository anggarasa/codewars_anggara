Map<String, int> hexToRGB(String hex) {
  // hapus '#' dan pastikan huruf besar/kecil tidak masalah
  final cleanHex = hex.replaceFirst('#', '').toUpperCase();

  final r = int.parse(cleanHex.substring(0, 2), radix: 16);
  final g = int.parse(cleanHex.substring(2, 4), radix: 16);
  final b = int.parse(cleanHex.substring(4, 6), radix: 16);

  return {'r': r, 'g': g, 'b': b};
}

void main() {
  print(hexToRGB("#FF9933")); // {r: 255, g: 153, b: 51}
  print(hexToRGB("#ff9933")); // {r: 255, g: 153, b: 51}
}

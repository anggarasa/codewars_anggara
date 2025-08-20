String orderWeight(String str) {
  if (str.trim().isEmpty) return "";

  // Pisah string jadi list angka
  List<String> numbers = str.trim().split(RegExp(r"\s+"));

  // Fungsi untuk hitung bobot
  int weight(String num) =>
      num.split('').map(int.parse).reduce((a, b) => a + b);

  // Sort pakai comparator custom
  numbers.sort((a, b) {
    int wa = weight(a);
    int wb = weight(b);

    if (wa == wb) {
      return a.compareTo(b); // urut sebagai string
    } else {
      return wa.compareTo(wb); // urut berdasarkan bobot
    }
  });

  // Gabung lagi jadi string
  return numbers.join(" ");
}

void main() {
  print(orderWeight("56 65 74 100 99 68 86 180 90"));
  // Output: 100 180 90 56 65 74 68 86 99
}

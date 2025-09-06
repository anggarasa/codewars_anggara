// Tipe dinamis karena return-nya bisa "fungsi lagi" atau "string"
dynamic createMessage([String? word]) {
  return _Message(word);
}

class _Message {
  final List<String> _words = [];

  _Message(String? first) {
    if (first != null) _words.add(first);
  }

  // call memungkinkan objek dipanggil seperti fungsi
  dynamic call([String? word]) {
    if (word == null) {
      // kalau tidak ada argumen -> gabungkan semua kata
      return _words.join(" ");
    } else {
      // tambahkan kata & kembalikan dirinya sendiri
      _words.add(word);
      return this;
    }
  }
}

void main() {
  print(createMessage("Hello")("World!")("how")("are")("you?")());
  // Output: Hello World! how are you?
}

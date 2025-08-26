class UrlShortener {
  // peta untuk long -> short
  final Map<String, String> _longToShort = {};
  // peta untuk short -> long
  final Map<String, String> _shortToLong = {};
  // counter untuk buat shortURL unik
  int _counter = 0;

  static const String _base =
      "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
  static const String _prefix = "short.ly/";

  // ubah angka counter ke base62 (supaya short link ringkas)
  String _encode(int n) {
    if (n == 0) return _base[0];
    String s = "";
    while (n > 0) {
      s = _base[n % _base.length] + s;
      n ~/= _base.length;
    }
    return s;
  }

  String? shorten(String? longURL) {
    if (longURL == null) return null;

    // jika sudah pernah dipendekkan → kembalikan shortURL lama
    if (_longToShort.containsKey(longURL)) {
      return _longToShort[longURL];
    }

    // buat shortURL baru
    String shortKey = _encode(_counter++);
    String shortURL = _prefix + shortKey;

    // simpan ke 2 map
    _longToShort[longURL] = shortURL;
    _shortToLong[shortURL] = longURL;

    return shortURL;
  }

  String? redirect(String? shortURL) {
    if (shortURL == null) return null;
    return _shortToLong[shortURL];
  }
}

void main() {
  var urlShortener = UrlShortener();

  String? s1 = urlShortener.shorten("https://www.google.com/search?q=codewars");
  print(s1); // contoh: short.ly/a

  String? s2 = urlShortener.shorten("https://www.google.com/search?q=codewars");
  print(s2); // sama dengan s1 (tidak bikin baru)

  print(urlShortener.redirect(s1)); // https://www.google.com/search?q=codewars
}

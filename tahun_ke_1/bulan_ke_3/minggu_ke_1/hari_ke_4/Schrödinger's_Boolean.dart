class OmniBool {
  @override
  bool operator ==(Object other) {
    if (other is bool) return true; // selalu true saat dibandingkan dengan bool
    return false;
  }
}

// deklarasi instance global
final omnibool = OmniBool();

void main() {
  print(omnibool == true); // true
  print(omnibool == false); // true
  print(omnibool == true && omnibool == false); // true
}

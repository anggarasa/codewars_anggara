List<int> parse(String data) {
  int value = 0;
  List<int> output = [];

  for (var cmd in data.split('')) {
    switch (cmd) {
      case 'i':
        value++;
        break;
      case 'd':
        value--;
        break;
      case 's':
        value *= value;
        break;
      case 'o':
        output.add(value);
        break;
    }
  }
  return output;
}

void main() {
  print(parse("iiisdoso")); // [8, 64]
  print(parse("iiisdosodddddiso")); // [8, 64, 3600]
}

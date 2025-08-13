String getOrder(String input) {
  final menu = [
    "burger",
    "fries",
    "chicken",
    "pizza",
    "sandwich",
    "onionrings",
    "milkshake",
    "coke",
  ];

  final found = <String>[];
  var remaining = input;

  // Step 1: potong string menjadi list kata menu
  while (remaining.isNotEmpty) {
    for (var item in menu) {
      if (remaining.startsWith(item)) {
        found.add(item);
        remaining = remaining.substring(item.length);
        break;
      }
    }
  }

  // Step 2: urutkan berdasarkan index di menu
  found.sort((a, b) => menu.indexOf(a).compareTo(menu.indexOf(b)));

  // Step 3: kapitalisasi dan gabung
  return found
      .map((item) => item[0].toUpperCase() + item.substring(1))
      .join(' ');
}

void main() {
  print(
    getOrder("milkshakepizzachickenfriescokeburgerpizzasandwichmilkshakepizza"),
  );
  print(getOrder("pizzachickenfriesburgercokemilkshakefriessandwich"));
  print(
    getOrder("burgerfriesfriesfriesfriesfriespizzasandwichcokefriesburger"),
  );
}

String meeting(String s) {
  var list = s.toUpperCase().split(';').map((person) {
    var parts = person.split(':');
    return [parts[1], parts[0]]; // [lastName, firstName]
  }).toList();

  list.sort(
    (a, b) => a[0] == b[0] ? a[1].compareTo(b[1]) : a[0].compareTo(b[0]),
  );

  return list.map((p) => "(${p[0]}, ${p[1]})").join();
}

void main() {
  print(
    meeting(
      "Fred:Corwill;Wilfred:Corwill;Barney:Tornbull;Betty:Tornbull;Bjon:Tornbull;Raphael:Corwill;Alfred:Corwill",
    ),
  );
}

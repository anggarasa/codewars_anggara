double calc(String expression) {
  // Hilangkan semua spasi
  expression = expression.replaceAll(' ', '');

  // Fungsi untuk evaluasi ekspresi tanpa tanda kurung
  double evalSimple(String exp) {
    // Tokenisasi angka dan operator
    final regex = RegExp(r'(\d+(\.\d+)?|[+\-*/])');
    final matches = regex.allMatches(exp);
    final tokens = matches.map((m) => m.group(0)!).toList();

    // Tangani unary minus/plus di depan angka
    for (int i = 0; i < tokens.length; i++) {
      if ((tokens[i] == '-' || tokens[i] == '+') &&
          (i == 0 || ['+', '-', '*', '/'].contains(tokens[i - 1]))) {
        tokens[i + 1] = (tokens[i] == '-' ? '-' : '') + tokens[i + 1];
        tokens.removeAt(i);
      }
    }

    // Step 1: evaluasi * dan /
    for (int i = 0; i < tokens.length; i++) {
      if (tokens[i] == '*' || tokens[i] == '/') {
        double left = double.parse(tokens[i - 1]);
        double right = double.parse(tokens[i + 1]);
        double result = tokens[i] == '*' ? left * right : left / right;
        tokens[i - 1] = result.toString();
        tokens.removeAt(i); // operator
        tokens.removeAt(i); // right number
        i--; // mundur satu langkah
      }
    }

    // Step 2: evaluasi + dan -
    double result = double.parse(tokens[0]);
    for (int i = 1; i < tokens.length; i += 2) {
      String op = tokens[i];
      double num = double.parse(tokens[i + 1]);
      if (op == '+') {
        result += num;
      } else {
        result -= num;
      }
    }

    return result;
  }

  // Fungsi rekursif untuk evaluasi tanda kurung
  double eval(String exp) {
    final paren = RegExp(r'\(([^()]+)\)');
    while (paren.hasMatch(exp)) {
      exp = exp.replaceAllMapped(paren, (m) {
        double val = evalSimple(m.group(1)!);
        return val.toString();
      });
    }
    return evalSimple(exp);
  }

  return eval(expression);
}

void main() {
  print(calc("1-1")); // 0
  print(calc("1 - -1")); // 2
  print(calc("(2 / (2 + 3.33) * 4) - -6")); // 7.0
  print(calc("6 + -(4)")); // 2
  print(calc("6 + -(-4)")); // 10
}

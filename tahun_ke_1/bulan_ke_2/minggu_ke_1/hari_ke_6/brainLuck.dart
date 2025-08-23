String brainLuck(String code, String input) {
  List<int> memory = List<int>.filled(30000, 0);
  int ptr = 0; // pointer memory
  int ip = 0; // instruction pointer
  List<int> inputBuffer = input.codeUnits; // input as ASCII
  int inputIndex = 0;
  StringBuffer output = StringBuffer();

  // Precompute pasangan bracket
  Map<int, int> bracketMap = {};
  List<int> stack = [];
  for (int i = 0; i < code.length; i++) {
    if (code[i] == '[') {
      stack.add(i);
    } else if (code[i] == ']') {
      int start = stack.removeLast();
      bracketMap[start] = i;
      bracketMap[i] = start;
    }
  }

  while (ip < code.length) {
    switch (code[ip]) {
      case '>':
        ptr++;
        break;
      case '<':
        ptr--;
        break;
      case '+':
        memory[ptr] = (memory[ptr] + 1) & 0xFF; // wrap 0-255
        break;
      case '-':
        memory[ptr] = (memory[ptr] - 1) & 0xFF;
        break;
      case '.':
        output.writeCharCode(memory[ptr]);
        break;
      case ',':
        memory[ptr] = inputBuffer[inputIndex++];
        break;
      case '[':
        if (memory[ptr] == 0) {
          ip = bracketMap[ip]!; // lompat ke after ]
        }
        break;
      case ']':
        if (memory[ptr] != 0) {
          ip = bracketMap[ip]!; // balik ke after [
        }
        break;
    }
    ip++;
  }

  return output.toString();
}

void main() {
  // Hello World program in Brainfuck
  String hello =
      "++++++++++[>+++++++>++++++++++>+++>+<<<<-]>"
      "++.>+.+++++++..+++.>++.<<+++++++++++++++."
      ">.+++.------.--------.>+.>.";
  print(brainLuck(hello, "")); // Hello World!

  // Echo input
  print(brainLuck(",[.[-],]", "Hi!")); // Hi!
}

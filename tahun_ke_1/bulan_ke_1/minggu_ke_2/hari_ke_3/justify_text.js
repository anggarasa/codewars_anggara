function justifyText(text, width) {
  const words = text.split(/\s+/);
  const lines = [];
  let line = [];
  let lineLen = 0;

  for (let word of words) {
    if (lineLen + line.length + word.length > width) {
      lines.push(justifyLine(line, lineLen, width));
      line = [];
      lineLen = 0;
    }
    line.push(word);
    lineLen += word.length;
  }

  // Baris terakhir — tidak justify, spasi 1 saja
  const lastLine = line.join(" ");
  lines.push(lastLine);

  return lines.join("\n");
}

function justifyLine(words, lineLen, width) {
  if (words.length === 1) return words[0];

  const spaces = width - lineLen;
  const gaps = words.length - 1;
  const base = Math.floor(spaces / gaps);
  let extra = spaces % gaps;

  let result = "";

  for (let i = 0; i < words.length - 1; i++) {
    result += words[i];
    result += " ".repeat(base + (extra > 0 ? 1 : 0));
    if (extra > 0) extra--;
  }

  result += words[words.length - 1];
  return result;
}

const input = `Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis dolor mauris, at elementum ligula tempor eget. In quis rhoncus nunc, at aliquet orci. Fusce at dolor sit amet felis suscipit tristique. Nam a imperdiet tellus. Nulla eu vestibulum urna. Vivamus tincidunt suscipit enim, nec ultrices nisi volutpat ac. Maecenas sit amet lacinia arcu, non dictum justo. Donec sed quam vel risus faucibus euismod. Suspendisse rhoncus rhoncus felis at fermentum. Donec lorem magna, ultricies a nunc sit amet, blandit fringilla nunc. In vestibulum velit ac felis rhoncus pellentesque. Mauris at tellus enim. Aliquam eleifend tempus dapibus. Pellentesque commodo, nisi sit amet hendrerit fringilla, ante odio porta lacus, ut elementum justo nulla et dolor.`;

console.log(justifyText(input, 30));

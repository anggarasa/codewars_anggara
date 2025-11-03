const palindromeChainLength = (n) => {
  let s = 0;
  while ((t = n.toString()) !== [...t].reverse().join("")) {
    n += +[...t].reverse().join("");
    s++;
  }
  return s;
};

console.log(palindromeChainLength(87)); // ➜ 4 (karena hasil akhirnya 4884)
console.log(palindromeChainLength(5)); // ➜ 0 (sudah palindrom)
console.log(palindromeChainLength(56)); // ➜ 1 (56 + 65 = 121)
console.log(palindromeChainLength(349)); // ➜ 3

function whoIsPaying(name) {
  if (name.length <= 2) {
    return [name];
  } else {
    return [name, name.slice(0, 2)];
  }
}

console.log(whoIsPaying("Bo"));
// ["Bo"]   (karena panjangnya 2)

console.log(whoIsPaying("A"));
// ["A"]    (karena panjangnya 1)

console.log(whoIsPaying("Trump"));
// ["Trump", "Tr"]

console.log(whoIsPaying("Angela"));
// ["Angela", "An"]

console.log(whoIsPaying("Xi"));
// ["Xi"]   (panjangnya 2, jadi gak dipotong lagi)

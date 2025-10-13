function position(letter) {
  return `Position of alphabet: ${letter.charCodeAt(0) - 96}`;
}

console.log(position("a")); // Posisi alfabet: 1
console.log(position("z")); // Posisi alfabet: 26
console.log(position("c")); // Posisi alfabet: 3

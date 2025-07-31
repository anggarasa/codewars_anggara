class RomanNumerals {
  static toRoman(num) {
    const romanMap = [
      ["M", 1000],
      ["CM", 900],
      ["D", 500],
      ["CD", 400],
      ["C", 100],
      ["XC", 90],
      ["L", 50],
      ["XL", 40],
      ["X", 10],
      ["IX", 9],
      ["V", 5],
      ["IV", 4],
      ["I", 1],
    ];

    let result = "";
    for (const [roman, value] of romanMap) {
      while (num >= value) {
        result += roman;
        num -= value;
      }
    }
    return result;
  }

  static fromRoman(str) {
    const romanMap = {
      M: 1000,
      D: 500,
      C: 100,
      L: 50,
      X: 10,
      V: 5,
      I: 1,
    };

    let result = 0;
    for (let i = 0; i < str.length; i++) {
      const curr = romanMap[str[i]];
      const next = romanMap[str[i + 1]];

      if (next > curr) {
        result += next - curr;
        i++; // skip next char
      } else {
        result += curr;
      }
    }

    return result;
  }
}

console.log(RomanNumerals.toRoman(2000)); // "MM"
console.log(RomanNumerals.toRoman(1666)); // "MDCLXVI"
console.log(RomanNumerals.toRoman(86)); // "LXXXVI"
console.log(RomanNumerals.toRoman(1)); // "I"

console.log(RomanNumerals.fromRoman("MM")); // 2000
console.log(RomanNumerals.fromRoman("MDCLXVI")); // 1666
console.log(RomanNumerals.fromRoman("LXXXVI")); // 86
console.log(RomanNumerals.fromRoman("I")); // 1
console.log(RomanNumerals.fromRoman("IV")); // 4
console.log(RomanNumerals.fromRoman("MCMXC")); // 1990

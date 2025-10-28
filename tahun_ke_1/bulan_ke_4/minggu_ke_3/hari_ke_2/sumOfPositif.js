const positiveSum = (arr) => arr.reduce((s, n) => s + (n > 0 ? n : 0), 0);

console.log(positiveSum([1, -4, 7, 12])); // 20
console.log(positiveSum([-1, -2, -3])); // 0
console.log(positiveSum([])); // 0

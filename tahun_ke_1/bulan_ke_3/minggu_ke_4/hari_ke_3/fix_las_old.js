function differenceInAges(ages) {
  const youngest = Math.min(...ages);
  const oldest = Math.max(...ages);
  const difference = oldest - youngest;
  return [youngest, oldest, difference];
}

console.log(differenceInAges([82, 15, 6, 38, 35])); // [6, 82, 76]
console.log(differenceInAges([57, 99, 14, 32])); // [14, 99, 85]
console.log(differenceInAges([1, 1, 1])); // [1, 1, 0]

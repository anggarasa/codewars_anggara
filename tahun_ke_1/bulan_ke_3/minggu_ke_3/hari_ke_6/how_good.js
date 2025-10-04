function betterThanAverage(classPoints, yourPoints) {
  let average =
    classPoints.reduce((sum, val) => sum + val, 0) / classPoints.length;
  return yourPoints > average;
}

console.log(betterThanAverage([2, 3], 5));
// true (rata-rata = 2.5, kamu = 5)

console.log(betterThanAverage([100, 40, 34, 57, 29, 72, 57, 88], 75));
// true (rata-rata = 59.625, kamu = 75)

console.log(betterThanAverage([100, 90], 11));
// false (rata-rata = 95, kamu = 11)

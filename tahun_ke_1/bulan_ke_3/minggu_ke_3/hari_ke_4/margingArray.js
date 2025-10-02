function mergeArrays(a, b) {
  return [...new Set([...a, ...b])].sort((x, y) => x - y);
}

console.log(mergeArrays([1, 3, 5], [2, 4, 6]));
// [1, 2, 3, 4, 5, 6]

console.log(mergeArrays([1, 2, 2], [2, 3, 4]));
// [1, 2, 3, 4]

console.log(mergeArrays([], [1, 2]));
// [1, 2]

console.log(mergeArrays([5, 10], [5, 10, 20]));
// [5, 10, 20]

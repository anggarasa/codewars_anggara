function isSortedAndHow(array) {
  const ascending = array.every((val, i, arr) => i === 0 || arr[i - 1] <= val);
  const descending = array.every((val, i, arr) => i === 0 || arr[i - 1] >= val);

  if (ascending) return "yes, ascending";
  if (descending) return "yes, descending";
  return "no";
}

console.log(isSortedAndHow([1, 2, 3, 4])); // "yes, ascending"
console.log(isSortedAndHow([4, 2, 1])); // "yes, descending"
console.log(isSortedAndHow([1, 3, 2])); // "no"
console.log(isSortedAndHow([1, 1, 2, 3])); // "yes, ascending"
console.log(isSortedAndHow([9, 9, 8, 7, 7, 6])); // "yes, descending"

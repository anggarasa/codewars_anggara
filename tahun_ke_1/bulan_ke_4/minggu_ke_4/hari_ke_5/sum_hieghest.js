function sumArray(array) {
  if (!array || array.length <= 1) return 0;

  const max = Math.max(...array);
  const min = Math.min(...array);

  let sum = 0;
  let maxRemoved = false;
  let minRemoved = false;

  for (let num of array) {
    if (num === max && !maxRemoved) {
      maxRemoved = true;
      continue;
    }
    if (num === min && !minRemoved) {
      minRemoved = true;
      continue;
    }
    sum += num;
  }

  return sum;
}

sumArray([6, 2, 1, 8, 10]); // 16
sumArray([1, 1, 11, 2, 3]); // 6
sumArray(null); // 0
sumArray([]); // 0
sumArray([3]); // 0

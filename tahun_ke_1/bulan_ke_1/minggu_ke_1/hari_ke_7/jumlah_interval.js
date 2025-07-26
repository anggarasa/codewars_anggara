function sumIntervals(intervals) {
  if (!intervals || intervals.length === 0) return 0;

  intervals.sort((a, b) => a[0] - b[0]);

  const merged = [intervals[0]];

  for (let i = 1; i < intervals.length; i++) {
    const [currStart, currEnd] = intervals[i];
    const last = merged[merged.length - 1];

    if (currStart <= last[1]) {
      last[1] = Math.max(last[1], currEnd);
    } else {
      merged.push([currStart, currEnd]);
    }
  }

  return merged.reduce((total, [start, end]) => total + (end - start), 0);
}

console.log(
  sumIntervals([
    [1, 2],
    [6, 10],
    [11, 15],
  ])
); // 9

console.log(
  sumIntervals([
    [1, 4],
    [7, 10],
    [3, 5],
  ])
); // 7

console.log(
  sumIntervals([
    [1, 5],
    [10, 20],
    [1, 6],
    [16, 19],
    [5, 11],
  ])
); // 19

console.log(
  sumIntervals([
    [0, 20],
    [-100000000, 10],
    [30, 40],
  ])
); // 100000030

console.log(sumIntervals([])); // 0

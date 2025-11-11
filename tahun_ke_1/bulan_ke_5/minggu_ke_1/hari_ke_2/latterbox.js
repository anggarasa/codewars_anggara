const paintLetterboxes = (start, end) =>
  Array.from(
    { length: 10 },
    (_, i) =>
      [...Array(end - start + 1).keys()]
        .map((n) => "" + (n + start))
        .join("")
        .split("")
        .filter((d) => d == i).length
  );

[1, 9, 6, 3, 0, 1, 1, 1, 1, 1];

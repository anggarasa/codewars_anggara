function* gould() {
  let n = 0;
  while (true) {
    // Hitung banyaknya bit 1 (popcount)
    yield n.toString(2).split("0").join("").length;
    n++;
  }
}

const gen = gould();
console.log([...Array(16)].map(() => gen.next().value));
// [0,1,1,2,1,2,2,3,1,2,2,3,2,3,3,4]

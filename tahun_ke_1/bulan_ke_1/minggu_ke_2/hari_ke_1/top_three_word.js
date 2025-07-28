function top3Words(text) {
  const wordCounts = new Map();

  // Regex: cari kata yang hanya mengandung huruf dan apostrof
  const words = text.match(/[a-zA-Z']+(?:'[a-zA-Z]+)*/g);

  if (!words) return [];

  for (const rawWord of words) {
    const word = rawWord.toLowerCase();

    // Abaikan kata yang hanya apostrof, contoh: "''" atau "'"
    if (/^'+$/.test(word)) continue;

    wordCounts.set(word, (wordCounts.get(word) || 0) + 1);
  }

  // Ambil 3 kata terbanyak
  return [...wordCounts.entries()]
    .sort((a, b) => b[1] - a[1]) // urutkan berdasarkan jumlah
    .slice(0, 3) // ambil 3 teratas
    .map((entry) => entry[0]); // ambil hanya kata-nya
}

console.log(
  top3Words(`In a village of La Mancha, the name of which I have no desire to call to
  mind, there lived not long since one of those gentlemen that keep a lance
  in the lance-rack, an old buckler, a lean hack, and a greyhound for
  coursing. An olla of rather more beef than mutton, a salad on most
  nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
  on Sundays, made away with three-quarters of his income.`)
);
// → ["a", "of", "on"]

console.log(top3Words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e"));
// → ["e", "ddd", "aa"]

console.log(top3Words("  //wont won't won't"));
// → ["won't", "wont"]

console.log(top3Words("..."));
// → []

console.log(top3Words("''' ''' '''"));
// → []

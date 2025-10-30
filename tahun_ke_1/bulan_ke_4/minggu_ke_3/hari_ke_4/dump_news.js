function checkUser(userName) {
  const MSGS = [
    "This one's too clean, should be a bot.",
    "This one seems ok, may be there's still some humans around here...",
    "This one's probably an alien from 5th dim, be careful!",
    "Yeeerk!!! Mr Mxyztplk himself the imp of imps! Only Superman can beat him!",
  ];

  // 1. Un-leet mapping
  const map = {
    0: "o",
    1: "l",
    2: "z",
    3: "e",
    4: "a",
    5: "s",
    6: "b",
    7: "t",
    8: "B",
    9: "g",
  };
  let unleet = userName.replace(/[0-9]/g, (d) => map[d]);

  // 2. Buat binary string dari 'Mxyzptlk'
  const base = "Mxyzptlk";
  const lower = unleet.toLowerCase();
  let binary = [...base.toLowerCase()]
    .map((ch) => (lower.includes(ch) ? "1" : "0"))
    .join("");

  // 3. Hitung level dimensi ke-5
  const level = (100 * parseInt(binary, 2)) / 255;

  // 4. Tentukan pesan berdasarkan level
  if (level < 1) return MSGS[0];
  if (level < 50) return MSGS[1];
  if (level < 90) return MSGS[2];
  return MSGS[3];
}

console.log(checkUser("Am4b0"));
// unleet -> 'Amabo'
// binary 'Mxyzptlk' -> '10000000' (M match)
// level = 100 * 128 / 255 = ~50.2
// → "This one's probably an alien from 5th dim, be careful!"

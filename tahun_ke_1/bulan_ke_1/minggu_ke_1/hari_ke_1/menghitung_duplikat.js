function countDuplicateCharacters(text) {
  // Ubah string menjadi huruf kecil untuk mengabaikan perbedaan huruf besar/kecil
  const lowercasedText = text.toLowerCase();

  // Objek untuk menyimpan hitungan setiap karakter
  const charCounts = {};

  // Iterasi melalui setiap karakter dalam string
  for (let i = 0; i < lowercasedText.length; i++) {
    const char = lowercasedText[i];

    // Periksa apakah karakter adalah alfabet (a-z) atau digit numerik (0-9)
    // Sesuai asumsi soal, input hanya berisi ini, tapi validasi eksplisit lebih aman.
    if ((char >= 'a' && char <= 'z') || (char >= '0' && char <= '9')) {
      charCounts[char] = (charCounts[char] || 0) + 1;
    }
  }

  // Hitung berapa banyak karakter yang muncul lebih dari satu kali
  let duplicateCount = 0;
  for (const char in charCounts) {
    if (charCounts[char] > 1) {
      duplicateCount++;
    }
  }

  return duplicateCount;
}

// --- Contoh Pengujian ---

console.log("Pengujian countDuplicateCharacters:");

console.log(`"abcde" -> ${countDuplicateCharacters("abcde")}`);         // Expected: 0
console.log(`"aabbcde" -> ${countDuplicateCharacters("aabbcde")}`);     // Expected: 2 ('a', 'b')
console.log(`"aabBcde" -> ${countDuplicateCharacters("aabBcde")}`);     // Expected: 2 ('a', 'b')
console.log(`"indivisibility" -> ${countDuplicateCharacters("indivisibility")}`); // Expected: 1 ('i')
console.log(`"Indivisibilities" -> ${countDuplicateCharacters("Indivisibilities")}`); // Expected: 2 ('i', 's')
console.log(`"aA11" -> ${countDuplicateCharacters("aA11")}`);           // Expected: 2 ('a', '1')
console.log(`"ABBA" -> ${countDuplicateCharacters("ABBA")}`);           // Expected: 2 ('a', 'b')
console.log(`"testing123testing" -> ${countDuplicateCharacters("testing123testing")}`); // Expected: 4 ('t', 'e', 's', 'i', 'n', 'g') - Oh wait, 'i', 'n', 'g'
                                                                       // 't': 2, 'e': 2, 's': 2, 'i': 2, 'n': 2, 'g': 2
                                                                       // Expected: 6
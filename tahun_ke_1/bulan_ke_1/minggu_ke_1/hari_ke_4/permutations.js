// stringPermutationsTest.js

function permutations(str) {
  const result = new Set(); // Menggunakan Set untuk secara otomatis menangani duplikat

  // Fungsi rekursif untuk menghasilkan permutasi
  function generate(currentPermutation, remainingChars) {
    // Kasus dasar: Jika tidak ada karakter yang tersisa,
    // kita telah membentuk satu permutasi lengkap.
    if (remainingChars.length === 0) {
      result.add(currentPermutation);
      return;
    }

    // Iterasi melalui karakter yang tersisa
    for (let i = 0; i < remainingChars.length; i++) {
      const char = remainingChars[i];

      // Buat string baru untuk karakter yang tersisa
      // dengan menghilangkan karakter saat ini
      const newRemainingChars =
        remainingChars.substring(0, i) + remainingChars.substring(i + 1);

      // Panggil fungsi rekursif dengan permutasi yang diperbarui
      // dan karakter yang tersisa yang sudah berkurang
      generate(currentPermutation + char, newRemainingChars);
    }
  }

  // Mulai proses pembuatan permutasi
  generate("", str);

  // Ubah Set menjadi Array sebelum mengembalikan
  return Array.from(result);
}

// --- Contoh Pengujian ---

console.log("Pengujian fungsi permutations:");

console.log(`Input 'a':`, permutations("a")); // Expected: ['a']
console.log(`Input 'ab':`, permutations("ab")); // Expected: ['ab', 'ba'] (urutan tidak masalah)
console.log(`Input 'abc':`, permutations("abc")); // Expected: ['abc','acb','bac','bca','cab','cba'] (urutan tidak masalah)
console.log(`Input 'aabb':`, permutations("aabb")); // Expected: ['aabb', 'abab', 'abba', 'baab', 'baba', 'bbaa'] (urutan tidak masalah)
console.log(`Input 'dog':`, permutations("dog"));
console.log(`Input 'banana':`, permutations("banana")); // Contoh dengan lebih banyak duplikat

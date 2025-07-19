function twoSum(nums, target) {
  // Objek untuk menyimpan angka yang sudah dilihat dan indeksnya
  const numMap = {};

  // Iterasi melalui array angka
  for (let i = 0; i < nums.length; i++) {
    const currentNum = nums[i];
    // Hitung "complement" yang dibutuhkan untuk mencapai target
    const complement = target - currentNum;

    // Cek apakah complement sudah ada di numMap
    if (complement in numMap) {
      // Jika ada, kita menemukan pasangan yang cocok
      // Kembalikan indeks dari complement dan indeks saat ini
      return [numMap[complement], i];
    }

    // Jika complement belum ada, simpan angka saat ini beserta indeksnya
    numMap[currentNum] = i;
  }
}



console.log("Pengujian twoSum:");

// Contoh 1
const result1 = twoSum([1, 2, 3], 4);
console.log(`twoSum([1, 2, 3], 4) -> [${result1}]`); // Seharusnya [0, 2] atau [2, 0]

// Contoh 2
const result2 = twoSum([3, 2, 4], 6);
console.log(`twoSum([3, 2, 4], 6) -> [${result2}]`); // Seharusnya [1, 2] atau [2, 1]

// Contoh Tambahan
const result3 = twoSum([7, 11, 15, 2], 9);
console.log(`twoSum([7, 11, 15, 2], 9) -> [${result3}]`); // Seharusnya [0, 3] atau [3, 0]

const result4 = twoSum([5, 1, 8, 3, 6], 9);
console.log(`twoSum([5, 1, 8, 3, 6], 9) -> [${result4}]`); // Seharusnya [0, 3] atau [3, 0]
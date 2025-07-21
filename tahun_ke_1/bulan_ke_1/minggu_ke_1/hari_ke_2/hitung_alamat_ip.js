// ipv4CountTest.js

function ipv4Count(ipStart, ipEnd) {
  // Fungsi helper untuk mengonversi alamat IPv4 (string) menjadi bilangan bulat 32-bit
  function ipToLong(ipAddress) {
    const parts = ipAddress.split('.');
    let result = 0;

    // Gunakan perkalian untuk membangun nilai integer secara eksplisit
    // Ini menghindari perilaku 32-bit signed integer dari operasi bitwise
    result += parseInt(parts[0], 10) * (256 * 256 * 256); // 256^3
    result += parseInt(parts[1], 10) * (256 * 256);     // 256^2
    result += parseInt(parts[2], 10) * 256;             // 256^1
    result += parseInt(parts[3], 10);                   // 256^0

    return result;
  }

  // Konversi kedua alamat IP ke representasi bilangan bulat panjang
  const startLong = ipToLong(ipStart);
  const endLong = ipToLong(ipEnd);

  // Hitung selisihnya
  return endLong - startLong;
}

// --- Contoh Pengujian ---

console.log("Pengujian fungsi ipv4Count:");

// Contoh dasar
console.log(`ipv4Count("10.0.0.0", "10.0.0.50") --> ${ipv4Count("10.0.0.0", "10.0.0.50")}`); // Expected: 50
console.log(`ipv4Count("10.0.0.0", "10.0.1.0") --> ${ipv4Count("10.0.0.0", "10.0.1.0")}`); // Expected: 256 (karena 1.0 adalah 256 alamat setelah 0.0)
console.log(`ipv4Count("10.0.0.0", "10.0.0.0") --> ${ipv4Count("10.0.0.0", "10.0.0.0")}`); // Expected: 0 (meskipun soal bilang terakhir > pertama, ini untuk validasi)

// Contoh dari problem aslinya
console.log(`ipv4Count("10.0.0.0", "10.0.0.50") --> ${ipv4Count("10.0.0.0", "10.0.0.50")}`); // Expected: 50
console.log(`ipv4Count("10.0.0.0", "10.0.1.0") --> ${ipv4Count("10.0.0.0", "10.0.1.0")}`); // Expected: 256
console.log(`ipv4Count("10.0.0.0", "10.0.0.255") --> ${ipv4Count("10.0.0.0", "10.0.0.255")}`); // Expected: 255
console.log(`ipv4Count("10.0.0.0", "10.0.1.255") --> ${ipv4Count("10.0.0.0", "10.0.1.255")}`); // Expected: 511
console.log(`ipv4Count("192.168.0.0", "192.168.1.0") --> ${ipv4Count("192.168.0.0", "192.168.1.0")}`); // Expected: 256
console.log(`ipv4Count("1.1.1.1", "1.1.1.2") --> ${ipv4Count("1.1.1.1", "1.1.1.2")}`); // Expected: 1
console.log(`ipv4Count("0.0.0.0", "255.255.255.255") --> ${ipv4Count("0.0.0.0", "255.255.255.255")}`); // Expected: 4294967295 (max IPv4 addresses)
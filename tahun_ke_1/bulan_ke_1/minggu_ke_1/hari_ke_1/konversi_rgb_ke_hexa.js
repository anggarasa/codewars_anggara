function rgb(r, g, b) {
  // Fungsi helper untuk mengonversi satu komponen warna ke heksadesimal
  function toHex(c) {
    // Batasi nilai c antara 0 dan 255
    c = Math.max(0, Math.min(255, c));

    // Konversi ke heksadesimal dan pastikan selalu 2 digit
    // toString(16) mengonversi ke heksadesimal
    // padStart(2, '0') menambahkan '0' di depan jika hasilnya hanya 1 digit
    return c.toString(16).padStart(2, '0').toUpperCase();
  }

  // Gabungkan hasil konversi untuk setiap komponen warna (R, G, B)
  return toHex(r) + toHex(g) + toHex(b);
}

// --- Contoh Pengujian ---

console.log("Pengujian fungsi rgb:");

console.log(`rgb(255, 255, 255) --> "${rgb(255, 255, 255)}"`); // Expected: "FFFFFF"
console.log(`rgb(255, 255, 300) --> "${rgb(255, 255, 300)}"`); // Expected: "FFFFFF"
console.log(`rgb(0, 0, 0)       --> "${rgb(0, 0, 0)}"`);       // Expected: "000000"
console.log(`rgb(148, 0, 211)   --> "${rgb(148, 0, 211)}"`);   // Expected: "9400D3"
console.log(`rgb(170, 0, 0)     --> "${rgb(170, 0, 0)}"`);     // Expected: "AA0000"
console.log(`rgb(-20, 125, 260) --> "${rgb(-20, 125, 260)}"`); // Expected: "007DFF"
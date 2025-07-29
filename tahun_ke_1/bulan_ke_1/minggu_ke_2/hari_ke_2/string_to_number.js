function sumStrings(a, b) {
  let result = "";
  let carry = 0;

  // Pad dengan nol agar panjangnya sama
  a = a.replace(/^0+/, "");
  b = b.replace(/^0+/, "");

  let maxLength = Math.max(a.length, b.length);
  a = a.padStart(maxLength, "0");
  b = b.padStart(maxLength, "0");

  // Mulai dari digit paling kanan
  for (let i = maxLength - 1; i >= 0; i--) {
    let sum = Number(a[i]) + Number(b[i]) + carry;
    result = (sum % 10) + result;
    carry = Math.floor(sum / 10);
  }

  // Tambahkan carry terakhir jika ada
  if (carry > 0) {
    result = carry + result;
  }

  // Hilangkan leading zero
  return result.replace(/^0+/, "") || "0";
}

console.log(sumStrings("1", "2")); // "3"
console.log(sumStrings("123", "456")); // "579"
console.log(sumStrings("00103", "08567")); // "8670"
console.log(sumStrings("999", "1")); // "1000"
console.log(sumStrings("000000", "0")); // "0"
// console.log(sumStrings("9".repeat(1000000), "1")); // "1" + 1 juta nol

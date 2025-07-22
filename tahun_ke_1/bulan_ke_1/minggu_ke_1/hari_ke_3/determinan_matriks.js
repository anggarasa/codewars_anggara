function determinant(matrix) {
  const n = matrix.length;

  // Kasus dasar: matriks 1x1
  if (n === 1) {
    return matrix[0][0];
  }

  // Kasus dasar: matriks 2x2
  if (n === 2) {
    return (matrix[0][0] * matrix[1][1]) - (matrix[0][1] * matrix[1][0]);
  }

  // Rekursi untuk matriks NxN (N > 2)
  let det = 0;
  for (let col = 0; col < n; col++) {
    // Buat minor matrix
    const minorMatrix = [];
    for (let row = 1; row < n; row++) { // Mulai dari baris kedua
      const minorRow = [];
      for (let c = 0; c < n; c++) {
        if (c !== col) { // Jangan masukkan kolom yang sedang dicoret
          minorRow.push(matrix[row][c]);
        }
      }
      if (minorRow.length > 0) { // Pastikan minorRow tidak kosong sebelum ditambahkan
        minorMatrix.push(minorRow);
      }
    }

    // Tentukan tanda: positif jika indeks kolom genap, negatif jika ganjil
    const sign = (col % 2 === 0) ? 1 : -1;

    // Hitung determinan minor dan tambahkan ke total
    det += sign * matrix[0][col] * determinant(minorMatrix);
  }

  return det;
}

// --- Contoh Pengujian ---

console.log("Pengujian fungsi determinant:");

// Matriks 1x1
const matrix1 = [[1]];
console.log(`Determinan [[1]]: ${determinant(matrix1)} (Expected: 1)`);

// Matriks 2x2
const matrix2 = [
  [1, 2],
  [3, 4]
];
console.log(`Determinan [[1, 2], [3, 4]]: ${determinant(matrix2)} (Expected: -2)`); // (1*4 - 2*3 = 4 - 6 = -2)

const matrix2b = [
  [5, 8],
  [2, 3]
];
console.log(`Determinan [[5, 8], [2, 3]]: ${determinant(matrix2b)} (Expected: -1)`); // (5*3 - 8*2 = 15 - 16 = -1)

// Matriks 3x3
const matrix3 = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
];
console.log(`Determinan [[1, 2, 3], [4, 5, 6], [7, 8, 9]]: ${determinant(matrix3)} (Expected: 0)`);
// 1 * det([[5,6],[8,9]]) - 2 * det([[4,6],[7,9]]) + 3 * det([[4,5],[7,8]])
// 1 * (45-48) - 2 * (36-42) + 3 * (32-35)
// 1 * (-3) - 2 * (-6) + 3 * (-3)
// -3 + 12 - 9 = 0

const matrix3b = [
  [2, 5, 3],
  [1, -2, -1],
  [1, 3, 4]
];
console.log(`Determinan [[2, 5, 3], [1, -2, -1], [1, 3, 4]]: ${determinant(matrix3b)} (Expected: -20)`);
// 2 * det([[-2,-1],[3,4]]) - 5 * det([[1,-1],[1,4]]) + 3 * det([[1,-2],[1,3]])
// 2 * (-8 - (-3)) - 5 * (4 - (-1)) + 3 * (3 - (-2))
// 2 * (-5) - 5 * (5) + 3 * (5)
// -10 - 25 + 15 = -20

// Matriks 4x4
const matrix4 = [
  [1, 0, 2, -1],
  [3, 0, 0, 5],
  [2, 1, 4, -3],
  [1, 0, 5, 0]
];
console.log(`Determinan matrix 4x4: ${determinant(matrix4)} (Expected: 30)`);
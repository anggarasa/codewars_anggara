// pickPeaksTest.js

function pickPeaks(arr) {
  const result = { pos: [], peaks: [] };
  let possiblePeakIndex = null;

  for (let i = 1; i < arr.length; i++) {
    // Naik? simpan posisi kemungkinan puncak
    if (arr[i] > arr[i - 1]) {
      possiblePeakIndex = i;
    }

    // Turun setelah naik = validasi puncak
    else if (arr[i] < arr[i - 1] && possiblePeakIndex !== null) {
      result.pos.push(possiblePeakIndex);
      result.peaks.push(arr[possiblePeakIndex]);
      possiblePeakIndex = null;
    }

    // Kalau arr[i] == arr[i - 1], biarkan saja (plateau, lanjut sampai turun)
  }

  return result;
}

// --- Contoh Pengujian ---

console.log(pickPeaks([1, 2, 3, 6, 4, 1, 2, 3, 2, 1, 2, 3]));
// { pos: [3, 7], peaks: [6, 3] }

console.log(pickPeaks([1, 2, 2, 2, 1]));
// { pos: [1], peaks: [2] }

console.log(pickPeaks([1, 2, 2, 2, 3]));
// { pos: [], peaks: [] }

console.log(pickPeaks([1, 2, 2, 2, 2]));
// { pos: [], peaks: [] }

console.log(pickPeaks([1, 2, 1, 2, 1]));
// { pos: [1, 3], peaks: [2, 2] }

console.log(pickPeaks([]));
// { pos: [], peaks: [] }

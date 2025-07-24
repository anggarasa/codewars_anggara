// robbyPinsTest.js

function getPINs(observedPin) {
  const keypadNeighbors = {
    1: ["1", "2", "4"],
    2: ["1", "2", "3", "5"],
    3: ["2", "3", "6"],
    4: ["1", "4", "5", "7"],
    5: ["2", "4", "5", "6", "8"],
    6: ["3", "5", "6", "9"],
    7: ["4", "7", "8"],
    8: ["5", "7", "8", "9", "0"],
    9: ["6", "8", "9"],
    0: ["0", "8"],
  };

  const results = [];

  function generatePins(index, currentPin) {
    if (index === observedPin.length) {
      results.push(currentPin);
      return;
    }

    const observedDigit = observedPin[index];
    const neighbors = keypadNeighbors[observedDigit];

    for (let i = 0; i < neighbors.length; i++) {
      const neighborDigit = neighbors[i];
      generatePins(index + 1, currentPin + neighborDigit);
    }
  }

  generatePins(0, "");

  return results;
}

// --- Contoh Pengujian ---

console.log("Pengujian fungsi getPINs:");

// Test Case 1: '1'
const pins1 = getPINs("1");
console.log(`PIN '1': [${pins1}]`);
// Expected: ['1', '2', '4'] (Urutan mungkin berbeda)

// Test Case 2: '1357'
const pins2 = getPINs("1357");
console.log(`PIN '1357': Jumlah variasi: ${pins2.length}`);
// console.log(pins2); // Uncomment ini untuk melihat semua PIN
// Expected: 3 * 3 * 5 * 3 = 135 variasi (karena 1(3) * 3(3) * 5(5) * 7(3))

// Test Case 3: '8'
const pins3 = getPINs("8");
console.log(`PIN '8': [${pins3}]`);
// Expected: ['5', '7', '8', '9', '0'] (Urutan mungkin berbeda)

// Test Case 4: '11'
const pins4 = getPINs("11");
console.log(`PIN '11': [${pins4}]`);
// Expected: ['11', '12', '14', '21', '22', '24', '41', '42', '44'] (Urutan mungkin berbeda)

// Test Case 5: '0'
const pins5 = getPINs("0");
console.log(`PIN '0': [${pins5}]`);
// Expected: ['0', '8']

// Test Case 6: '369'
const pins6 = getPINs("369");
console.log(`PIN '369': Jumlah variasi: ${pins6.length}`);
// console.log(pins6); // Uncomment ini untuk melihat semua PIN
// Expected: 3 * 4 * 3 = 36 variasi

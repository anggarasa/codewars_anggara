function guessBlue(blueStart, redStart, bluePulled, redPulled) {
  let blueLeft = blueStart - bluePulled;
  let redLeft = redStart - redPulled;
  let totalLeft = blueLeft + redLeft;

  return blueLeft / totalLeft;
}

console.log(guessBlue(5, 5, 2, 3));
// 0.6  -> (3 biru tersisa / 5 total tersisa)

console.log(guessBlue(10, 10, 5, 5));
// 0.5  -> peluang seimbang

console.log(guessBlue(12, 8, 4, 2));
// 0.571428... ≈ 4/7

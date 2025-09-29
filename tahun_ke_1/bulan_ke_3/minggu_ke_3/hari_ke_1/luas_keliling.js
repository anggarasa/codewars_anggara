const areaOrPerimeter = function (l, w) {
  return l === w ? l * w : 2 * (l + w);
};

console.log(areaOrPerimeter(6, 10));
// 32 (keliling persegi panjang)

console.log(areaOrPerimeter(3, 3));
// 9 (luas persegi)

console.log(areaOrPerimeter(7, 2));
// 18 (keliling persegi panjang)

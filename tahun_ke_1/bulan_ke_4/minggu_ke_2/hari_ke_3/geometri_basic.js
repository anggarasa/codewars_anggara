function distanceBetweenPoints(a, b) {
  return Math.hypot(a.x - b.x, a.y - b.y);
}

console.log(distanceBetweenPoints({ x: 1, y: 2 }, { x: 4, y: 6 }));
// √((4-1)² + (6-2)²) = √(9 + 16) = 5

console.log(distanceBetweenPoints({ x: -5, y: 0 }, { x: 10, y: -10 }));
// √((15)² + (-10)²) = √(225 + 100) = √325 ≈ 18.027756

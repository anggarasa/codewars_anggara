let Ghost = function () {
  const colors = ["white", "yellow", "purple", "red"];
  this.color = colors[Math.floor(Math.random() * colors.length)];
};

let ghost1 = new Ghost();
console.log(ghost1.color); // bisa "white", "yellow", "purple", atau "red"

let ghost2 = new Ghost();
console.log(ghost2.color); // warna bisa beda dari ghost1

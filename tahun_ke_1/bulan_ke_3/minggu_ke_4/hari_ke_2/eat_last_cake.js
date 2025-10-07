function cookie(x) {
  if (typeof x === "string") {
    return "Who ate the last cookie? It was Zach!";
  } else if (typeof x === "number") {
    return "Who ate the last cookie? It was Monica!";
  } else {
    return "Who ate the last cookie? It was the dog!";
  }
}

console.log(cookie("hai")); // Siapa yang makan kue terakhir? Zach!
console.log(cookie(3.14)); // Siapa yang makan kue terakhir? Monica!
console.log(cookie(12)); // Siapa yang makan kue terakhir? Monica!
console.log(cookie(true)); // Siapa yang makan kue terakhir? anjing!
console.log(cookie({})); // Siapa yang makan kue terakhir? anjing!

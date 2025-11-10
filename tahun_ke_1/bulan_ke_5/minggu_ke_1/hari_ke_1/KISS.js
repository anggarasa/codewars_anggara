function isKiss(words) {
  const arr = words.split(" ");
  const wordCount = arr.length;

  for (let w of arr) {
    if (w.length > wordCount) {
      return "Keep It Simple Stupid";
    }
  }

  return "Good work Joe!";
}

isKiss("Joe likes cake");
// Keep It Simple Stupid

isKiss("I am me");
// Good work Joe!

isKiss("jump always mostly is touchy dancing choice is pineapples mostly");
// kemungkinan besar kompleks (karena ada kata panjang)

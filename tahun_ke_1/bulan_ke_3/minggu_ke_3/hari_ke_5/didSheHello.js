function validateHello(greetings) {
  return /(hello|ciao|salut|hallo|hola|ahoj|czesc)/i.test(greetings);
}

console.log(validateHello("Well, Hello there!"));
// true

console.log(validateHello("Ciao bella"));
// true

console.log(validateHello("Just saying hi"));
// false

console.log(validateHello("SALUT mon ami"));
// true

console.log(validateHello("Random text ahoj friend"));
// true

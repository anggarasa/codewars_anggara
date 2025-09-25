function ensureQuestion(s) {
  return s.endsWith("?") ? s : s + "?";
}

console.log(ensureQuestion("Yes"));
// "Yes?"

console.log(ensureQuestion("No?"));
// "No?"

console.log(ensureQuestion("Hello"));
// "Hello?"

console.log(ensureQuestion("?"));
// "?"

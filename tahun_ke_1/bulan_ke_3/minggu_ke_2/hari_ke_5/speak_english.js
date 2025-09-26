function spEng(sentence) {
  return sentence.toLowerCase().includes("english");
}

console.log(spEng("abcEnglishdef"));
// true

console.log(spEng("eNglisH"));
// true

console.log(spEng("abcnEglishsef"));
// false

console.log(spEng("I love ENGLISH very much"));
// true

console.log(spEng("JavaScript is fun"));
// false

// getDomainNameTest.js

function getDomainName(url) {
  let domain = url;

  // Hapus protokol (http://, https://)
  if (domain.includes("://")) {
    domain = domain.split("://")[1];
  }

  // Hapus "www." jika ada
  if (domain.startsWith("www.")) {
    domain = domain.substring(4); // Hapus 4 karakter pertama ('www.')
  }

  // Ambil bagian pertama sebelum '/' atau '.' (untuk TLD seperti .com)
  // Ini akan menangani kasus seperti "github.com/..." atau "zombie-bites.com"
  if (domain.includes("/")) {
    domain = domain.split("/")[0];
  }

  // Jika masih ada titik (misal "github.com" atau "zombie-bites.com"), ambil bagian pertamanya
  if (domain.includes(".")) {
    domain = domain.split(".")[0];
  }

  return domain;
}

// --- Contoh Pengujian ---

console.log("Pengujian fungsi getDomainName:");

console.log(
  `"http://github.com/carbonfive/raygun" -> "${getDomainName(
    "http://github.com/carbonfive/raygun"
  )}"`
); // Expected: "github"
console.log(
  `"http://www.zombie-bites.com"         -> "${getDomainName(
    "http://www.zombie-bites.com"
  )}"`
); // Expected: "zombie-bites"
console.log(
  `"https://www.cnet.com"                -> "${getDomainName(
    "https://www.cnet.com"
  )}"`
); // Expected: "cnet"
console.log(
  `"http://google.com"                   -> "${getDomainName(
    "http://google.com"
  )}"`
); // Expected: "google"
console.log(
  `"https://facebook.com/posts"          -> "${getDomainName(
    "https://facebook.com/posts"
  )}"`
); // Expected: "facebook"
console.log(
  `"www.youtube.com"                     -> "${getDomainName(
    "www.youtube.com"
  )}"`
); // Expected: "youtube"
console.log(
  `"codewars.com"                        -> "${getDomainName("codewars.com")}"`
); // Expected: "codewars"
console.log(
  `"http://sub.domain.com/path"          -> "${getDomainName(
    "http://sub.domain.com/path"
  )}"`
); // Expected: "sub"

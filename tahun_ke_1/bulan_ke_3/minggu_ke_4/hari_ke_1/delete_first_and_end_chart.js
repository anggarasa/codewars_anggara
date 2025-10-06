function array(string) {
  // pecah string jadi array
  let arr = string.split(",");

  // kalau jumlah elemen <= 2 berarti hasilnya pasti kosong
  if (arr.length <= 2 || string === "") {
    return null;
  }

  // ambil tengah-tengahnya, buang pertama dan terakhir
  let middle = arr.slice(1, -1);

  // gabungkan dengan spasi
  return middle.join(" ");
}

console.log(array("1,2,3")); // "2"
console.log(array("1,2,3,4")); // "2 3"
console.log(array("1,2,3,4,5")); // "2 3 4"
console.log(array("")); // null
console.log(array("1")); // null
console.log(array("1,2")); // null

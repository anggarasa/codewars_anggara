function shortenToDate(longDate) {
  return longDate.split(",")[0];
}

console.log(shortenToDate("Friday May 2, 7pm"));
// "Friday May 2"

console.log(shortenToDate("Tuesday January 10, 10am"));
// "Tuesday January 10"

console.log(shortenToDate("Sunday December 25, 12am"));
// "Sunday December 25"

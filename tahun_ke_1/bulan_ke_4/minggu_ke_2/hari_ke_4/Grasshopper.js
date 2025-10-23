function weatherInfo(temp) {
  var c = convertToCelsius(temp);
  if (c <= 0) return c + " is freezing temperature";
  else return c + " is above freezing temperature";
}

function convertToCelsius(temperature) {
  return (temperature - 32) * (5 / 9);
}

console.log(weatherInfo(50)); // "10 is above freezing temperature"
console.log(weatherInfo(23)); // "-5 is freezing temperature"
console.log(weatherInfo(32)); // "0 is freezing temperature"

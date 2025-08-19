String formatDuration(int seconds) {
  if (seconds == 0) return "now";

  final units = {
    "year": 31536000,
    "day": 86400,
    "hour": 3600,
    "minute": 60,
    "second": 1,
  };

  List<String> parts = [];

  units.forEach((unit, value) {
    int count = seconds ~/ value;
    if (count > 0) {
      parts.add("$count $unit${count > 1 ? 's' : ''}");
      seconds %= value;
    }
  });

  if (parts.length == 1) return parts.first;
  return parts.sublist(0, parts.length - 1).join(", ") +
      " and " +
      parts.last;
}

void main() {
  print(formatDuration(0));      // now
  print(formatDuration(62));     // 1 minute and 2 seconds
  print(formatDuration(3662));   // 1 hour, 1 minute and 2 seconds
  print(formatDuration(31536000 + 62)); 
  // 1 year, 1 minute and 2 seconds
}

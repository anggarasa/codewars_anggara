String latestClock(int a, int b, int c, int d) {
  List<int> digits = [a, b, c, d];
  String bestTime = "";
  int maxMinutes = -1;

  void permute(List<int> arr, int l) {
    if (l == arr.length) {
      int hh = arr[0] * 10 + arr[1];
      int mm = arr[2] * 10 + arr[3];
      if (hh < 24 && mm < 60) {
        int total = hh * 60 + mm;
        if (total > maxMinutes) {
          maxMinutes = total;
          bestTime =
              "${hh.toString().padLeft(2, '0')}:${mm.toString().padLeft(2, '0')}";
        }
      }
    } else {
      for (int i = l; i < arr.length; i++) {
        List<int> newArr = List.from(arr);
        int temp = newArr[l];
        newArr[l] = newArr[i];
        newArr[i] = temp;
        permute(newArr, l + 1);
      }
    }
  }

  permute(digits, 0);
  return bestTime;
}

void main() {
  print(latestClock(1, 9, 8, 3)); // 19:38
  print(latestClock(9, 1, 2, 5)); // 21:59
}
